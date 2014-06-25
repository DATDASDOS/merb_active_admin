$TESTING=true
$:.push File.join(File.dirname(__FILE__), '..', 'lib')


       underscored_to_human_readable( word.underscore )
      end
      
 +    def non_id_columns(model)
 +      model.columns.select{ |col| col.to_s !~ /_id$/ }
 +    end
 +    
      def column_type(model, column)
        model.schema.create_info.first.find{ |c| c[:name] == column.to_sym }[:type]
      end
