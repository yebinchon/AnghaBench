; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_pass.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_13__* }

@SECTOR_SIZE = common dso_local global i32 0, align 4
@make_bridged_udf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"\01CD001\01\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@volume_label = common dso_local global i8* null, align 8
@total_sectors = common dso_local global i32 0, align 4
@path_table_size = common dso_local global i32 0, align 4
@little_endian_path_table_sector = common dso_local global i32 0, align 4
@big_endian_path_table_sector = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOT_RECORD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PUBLISHER_ID = common dso_local global i8* null, align 8
@DATA_PREP_ID = common dso_local global i8* null, align 8
@APP_ID = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"0000000000000000\00", align 1
@eltorito = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"CD001\01\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"EL TORITO SPECIFICATION\00", align 1
@boot_catalog_sector = common dso_local global i32 0, align 4
@joliet = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"\02CD001\01\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%/E\00", align 1
@joliet_path_table_size = common dso_local global i32 0, align 4
@joliet_little_endian_path_table_sector = common dso_local global i32 0, align 4
@joliet_big_endian_path_table_sector = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"\FFCD001\01\00", align 1
@cd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@boot_validation_header = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@MANUFACTURER_ID = common dso_local global i8* null, align 8
@default_boot_entry = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@boot_header_list = common dso_local global %struct.TYPE_12__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Cannot open '%s'\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Invalid boot image size (%lu bytes)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Read error in file '%s'\0A\00", align 1
@DOT_DOT_RECORD = common dso_local global i32 0, align 4
@DIRECTORY_FLAG = common dso_local global i32 0, align 4
@SUBDIRECTORY_RECORD = common dso_local global i32 0, align 4
@FILE_RECORD = common dso_local global i32 0, align 4
@bytes_in_directories = common dso_local global i32 0, align 4
@number_of_directories = common dso_local global i32 0, align 4
@number_of_files = common dso_local global i32 0, align 4
@bytes_in_files = common dso_local global i32 0, align 4
@unused_bytes_at_ends_of_files = common dso_local global i32 0, align 4
@end_source = common dso_local global i8* null, align 8
@source = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"Writing contents of %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca [17 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %14 = call i32 @get_time_string(i8* %13)
  %15 = load i32, i32* @SECTOR_SIZE, align 4
  %16 = mul nsw i32 16, %15
  %17 = call i32 @write_block(i32 %16, i32 0)
  %18 = load i64, i64* @make_bridged_udf, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %0
  %21 = call i32 @write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @write_byte(i32 0)
  %23 = call i32 @write_bytecounted_string(i32 32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %24 = load i8*, i8** @volume_label, align 8
  %25 = call i32 @write_bytecounted_string(i32 32, i8* %24, i8 signext 32)
  %26 = call i32 @write_block(i32 8, i32 0)
  %27 = load i32, i32* @total_sectors, align 4
  %28 = call i32 @write_both_endian_dword(i32 %27)
  %29 = call i32 @write_block(i32 32, i32 0)
  %30 = call i32 @write_both_endian_word(i32 1)
  %31 = call i32 @write_both_endian_word(i32 1)
  %32 = call i32 @write_both_endian_word(i32 2048)
  %33 = load i32, i32* @path_table_size, align 4
  %34 = call i32 @write_both_endian_dword(i32 %33)
  %35 = load i32, i32* @little_endian_path_table_sector, align 4
  %36 = call i32 @write_little_endian_dword(i32 %35)
  %37 = call i32 @write_little_endian_dword(i32 0)
  %38 = load i32, i32* @big_endian_path_table_sector, align 4
  %39 = call i32 @write_big_endian_dword(i32 %38)
  %40 = call i32 @write_big_endian_dword(i32 0)
  %41 = load i32, i32* @DOT_RECORD, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @write_directory_record(%struct.TYPE_11__* @root, i32 %41, i32 %42)
  %44 = load i8*, i8** @volume_label, align 8
  %45 = call i32 @write_bytecounted_string(i32 128, i8* %44, i8 signext 32)
  %46 = load i8*, i8** @PUBLISHER_ID, align 8
  %47 = call i32 @write_bytecounted_string(i32 128, i8* %46, i8 signext 32)
  %48 = load i8*, i8** @DATA_PREP_ID, align 8
  %49 = call i32 @write_bytecounted_string(i32 128, i8* %48, i8 signext 32)
  %50 = load i8*, i8** @APP_ID, align 8
  %51 = call i32 @write_bytecounted_string(i32 128, i8* %50, i8 signext 32)
  %52 = call i32 @write_bytecounted_string(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %53 = call i32 @write_bytecounted_string(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %54 = call i32 @write_bytecounted_string(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %56 = call i32 @write_string(i8* %55)
  %57 = call i32 @write_byte(i32 0)
  %58 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %59 = call i32 @write_string(i8* %58)
  %60 = call i32 @write_byte(i32 0)
  %61 = call i32 @write_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @write_byte(i32 0)
  %63 = call i32 @write_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @write_byte(i32 0)
  %65 = call i32 @write_byte(i32 1)
  %66 = call i32 @write_byte(i32 0)
  %67 = call i32 (...) @fill_sector()
  br label %68

68:                                               ; preds = %20, %0
  %69 = load i64, i64* @eltorito, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = call i32 @write_byte(i32 0)
  %73 = call i32 @write_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @write_bytecounted_string(i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8 signext 0)
  %75 = call i32 @write_block(i32 32, i32 0)
  %76 = load i32, i32* @boot_catalog_sector, align 4
  %77 = call i32 @write_little_endian_dword(i32 %76)
  %78 = call i32 (...) @fill_sector()
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i64, i64* @joliet, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %79
  %83 = call i32 @write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @write_byte(i32 0)
  %85 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %86 = load i8*, i8** @volume_label, align 8
  %87 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 32, i8* %86, i8 signext 32)
  %88 = call i32 @write_block(i32 8, i32 0)
  %89 = load i32, i32* @total_sectors, align 4
  %90 = call i32 @write_both_endian_dword(i32 %89)
  %91 = call i32 @write_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %92 = call i32 @write_block(i32 29, i32 0)
  %93 = call i32 @write_both_endian_word(i32 1)
  %94 = call i32 @write_both_endian_word(i32 1)
  %95 = call i32 @write_both_endian_word(i32 2048)
  %96 = load i32, i32* @joliet_path_table_size, align 4
  %97 = call i32 @write_both_endian_dword(i32 %96)
  %98 = load i32, i32* @joliet_little_endian_path_table_sector, align 4
  %99 = call i32 @write_little_endian_dword(i32 %98)
  %100 = call i32 @write_little_endian_dword(i32 0)
  %101 = load i32, i32* @joliet_big_endian_path_table_sector, align 4
  %102 = call i32 @write_big_endian_dword(i32 %101)
  %103 = call i32 @write_big_endian_dword(i32 0)
  %104 = load i32, i32* @DOT_RECORD, align 4
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @write_directory_record(%struct.TYPE_11__* @root, i32 %104, i32 %105)
  %107 = load i8*, i8** @volume_label, align 8
  %108 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 128, i8* %107, i8 signext 32)
  %109 = load i8*, i8** @PUBLISHER_ID, align 8
  %110 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 128, i8* %109, i8 signext 32)
  %111 = load i8*, i8** @DATA_PREP_ID, align 8
  %112 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 128, i8* %111, i8 signext 32)
  %113 = load i8*, i8** @APP_ID, align 8
  %114 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 128, i8* %113, i8 signext 32)
  %115 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %116 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %117 = call i32 @write_bytecounted_string_as_big_endian_unicode(i32 37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  %118 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %119 = call i32 @write_string(i8* %118)
  %120 = call i32 @write_byte(i32 0)
  %121 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %122 = call i32 @write_string(i8* %121)
  %123 = call i32 @write_byte(i32 0)
  %124 = call i32 @write_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %125 = call i32 @write_byte(i32 0)
  %126 = call i32 @write_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %127 = call i32 @write_byte(i32 0)
  %128 = call i32 @write_byte(i32 1)
  %129 = call i32 @write_byte(i32 0)
  %130 = call i32 (...) @fill_sector()
  br label %131

131:                                              ; preds = %82, %79
  %132 = load i64, i64* @make_bridged_udf, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = call i32 @write_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %136 = call i32 (...) @fill_sector()
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i64, i64* @eltorito, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %221

140:                                              ; preds = %137
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %141, i32* @boot_catalog_sector, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @boot_validation_header, i32 0, i32 0), align 4
  %143 = call i32 @write_byte(i32 %142)
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @boot_validation_header, i32 0, i32 1), align 4
  %145 = call i32 @write_byte(i32 %144)
  %146 = call i32 @write_little_endian_word(i32 0)
  %147 = load i8*, i8** @MANUFACTURER_ID, align 8
  %148 = call i32 @write_bytecounted_string(i32 24, i8* %147, i8 signext 0)
  %149 = call i32 @write_little_endian_word(i32 1582)
  %150 = call i32 @write_little_endian_word(i32 43605)
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 0), align 8
  %152 = call i32 @write_byte(i32 %151)
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 1), align 4
  %154 = call i32 @write_byte(i32 %153)
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 2), align 8
  %156 = call i32 @write_little_endian_word(i32 %155)
  %157 = call i32 @write_byte(i32 0)
  %158 = call i32 @write_byte(i32 0)
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 3), align 4
  %160 = call i32 @write_little_endian_word(i32 %159)
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 4), align 8
  %162 = call i32 @write_little_endian_dword(i32 %161)
  %163 = call i32 @write_block(i32 20, i32 0)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boot_header_list, align 8
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %9, align 8
  br label %165

165:                                              ; preds = %215, %140
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = icmp ne %struct.TYPE_12__* %166, null
  br i1 %167, label %168, label %219

168:                                              ; preds = %165
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @write_byte(i32 %171)
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @write_byte(i32 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @write_little_endian_word(i32 %179)
  %181 = call i32 @write_block(i32 28, i32 0)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  store %struct.TYPE_13__* %184, %struct.TYPE_13__** %10, align 8
  br label %185

185:                                              ; preds = %188, %168
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %187 = icmp ne %struct.TYPE_13__* %186, null
  br i1 %187, label %188, label %215

188:                                              ; preds = %185
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @write_byte(i32 %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @write_byte(i32 %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @write_little_endian_word(i32 %199)
  %201 = call i32 @write_byte(i32 0)
  %202 = call i32 @write_byte(i32 0)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @write_little_endian_word(i32 %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @write_little_endian_dword(i32 %209)
  %211 = call i32 @write_block(i32 20, i32 0)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  store %struct.TYPE_13__* %214, %struct.TYPE_13__** %10, align 8
  br label %185

215:                                              ; preds = %185
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  store %struct.TYPE_12__* %218, %struct.TYPE_12__** %9, align 8
  br label %165

219:                                              ; preds = %165
  %220 = call i32 (...) @fill_sector()
  br label %221

221:                                              ; preds = %219, %137
  %222 = load i64, i64* @eltorito, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %337

224:                                              ; preds = %221
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 4), align 8
  %226 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 5), align 8
  %227 = call i32* @fopen(i8* %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %227, i32** %8, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 5), align 8
  %232 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %230, %224
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* @SEEK_END, align 4
  %236 = call i32 @fseek(i32* %234, i32 0, i32 %235)
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 @ftell(i32* %237)
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %5, align 4
  %243 = srem i32 %242, 2048
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241, %233
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 @fclose(i32* %246)
  %248 = load i32, i32* %5, align 4
  %249 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %245, %241
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 511
  %253 = sdiv i32 %252, 512
  store i32 %253, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 3), align 4
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @write_from_file(i32* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %250
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @fclose(i32* %259)
  %261 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @default_boot_entry, i32 0, i32 5), align 8
  %262 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %261)
  br label %263

263:                                              ; preds = %258, %250
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 @fclose(i32* %264)
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** @boot_header_list, align 8
  store %struct.TYPE_12__* %266, %struct.TYPE_12__** %9, align 8
  br label %267

267:                                              ; preds = %332, %263
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %269 = icmp ne %struct.TYPE_12__* %268, null
  br i1 %269, label %270, label %336

270:                                              ; preds = %267
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 4
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  store %struct.TYPE_13__* %273, %struct.TYPE_13__** %10, align 8
  br label %274

274:                                              ; preds = %326, %270
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %276 = icmp ne %struct.TYPE_13__* %275, null
  br i1 %276, label %277, label %332

277:                                              ; preds = %274
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 4
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 5
  %283 = load i8*, i8** %282, align 8
  %284 = call i32* @fopen(i8* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %284, i32** %8, align 8
  %285 = load i32*, i32** %8, align 8
  %286 = icmp eq i32* %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %277
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 5
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %290)
  br label %292

292:                                              ; preds = %287, %277
  %293 = load i32*, i32** %8, align 8
  %294 = load i32, i32* @SEEK_END, align 4
  %295 = call i32 @fseek(i32* %293, i32 0, i32 %294)
  %296 = load i32*, i32** %8, align 8
  %297 = call i32 @ftell(i32* %296)
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* %5, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %292
  %301 = load i32, i32* %5, align 4
  %302 = srem i32 %301, 2048
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %300, %292
  %305 = load i32*, i32** %8, align 8
  %306 = call i32 @fclose(i32* %305)
  %307 = load i32, i32* %5, align 4
  %308 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %304, %300
  %310 = load i32, i32* %5, align 4
  %311 = add nsw i32 %310, 511
  %312 = sdiv i32 %311, 512
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 4
  %315 = load i32*, i32** %8, align 8
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @write_from_file(i32* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %309
  %320 = load i32*, i32** %8, align 8
  %321 = call i32 @fclose(i32* %320)
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 5
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %324)
  br label %326

326:                                              ; preds = %319, %309
  %327 = load i32*, i32** %8, align 8
  %328 = call i32 @fclose(i32* %327)
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 6
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  store %struct.TYPE_13__* %331, %struct.TYPE_13__** %10, align 8
  br label %274

332:                                              ; preds = %274
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %334, align 8
  store %struct.TYPE_12__* %335, %struct.TYPE_12__** %9, align 8
  br label %267

336:                                              ; preds = %267
  br label %337

337:                                              ; preds = %336, %221
  %338 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %338, i32* @little_endian_path_table_sector, align 4
  %339 = call i32 @write_byte(i32 1)
  %340 = call i32 @write_byte(i32 0)
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 0), align 8
  %342 = call i32 @write_little_endian_dword(i32 %341)
  %343 = call i32 @write_little_endian_word(i32 1)
  %344 = call i32 @write_byte(i32 0)
  %345 = call i32 @write_byte(i32 0)
  store i32 1, i32* %3, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 1), align 4
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 12), align 8
  store %struct.TYPE_11__* %346, %struct.TYPE_11__** %1, align 8
  br label %347

347:                                              ; preds = %382, %337
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %349 = icmp ne %struct.TYPE_11__* %348, null
  br i1 %349, label %350, label %386

350:                                              ; preds = %347
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @strlen(i8* %353)
  store i32 %354, i32* %4, align 4
  %355 = load i32, i32* %4, align 4
  %356 = call i32 @write_byte(i32 %355)
  %357 = call i32 @write_byte(i32 0)
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @write_little_endian_dword(i32 %360)
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 11
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @write_little_endian_word(i32 %366)
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @write_string(i8* %370)
  %372 = load i32, i32* %4, align 4
  %373 = and i32 %372, 1
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %350
  %376 = call i32 @write_byte(i32 0)
  br label %377

377:                                              ; preds = %375, %350
  %378 = load i32, i32* %3, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %3, align 4
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 1
  store i32 %379, i32* %381, align 4
  br label %382

382:                                              ; preds = %377
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 12
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  store %struct.TYPE_11__* %385, %struct.TYPE_11__** %1, align 8
  br label %347

386:                                              ; preds = %347
  %387 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %388 = load i32, i32* @little_endian_path_table_sector, align 4
  %389 = sub nsw i32 %387, %388
  %390 = load i32, i32* @SECTOR_SIZE, align 4
  %391 = mul nsw i32 %389, %390
  %392 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 1), align 4
  %393 = add nsw i32 %391, %392
  store i32 %393, i32* @path_table_size, align 4
  %394 = call i32 (...) @fill_sector()
  %395 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %395, i32* @big_endian_path_table_sector, align 4
  %396 = call i32 @write_byte(i32 1)
  %397 = call i32 @write_byte(i32 0)
  %398 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 0), align 8
  %399 = call i32 @write_big_endian_dword(i32 %398)
  %400 = call i32 @write_big_endian_word(i32 1)
  %401 = call i32 @write_byte(i32 0)
  %402 = call i32 @write_byte(i32 0)
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 12), align 8
  store %struct.TYPE_11__* %403, %struct.TYPE_11__** %1, align 8
  br label %404

404:                                              ; preds = %435, %386
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %406 = icmp ne %struct.TYPE_11__* %405, null
  br i1 %406, label %407, label %439

407:                                              ; preds = %404
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @strlen(i8* %410)
  store i32 %411, i32* %4, align 4
  %412 = load i32, i32* %4, align 4
  %413 = call i32 @write_byte(i32 %412)
  %414 = call i32 @write_byte(i32 0)
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @write_big_endian_dword(i32 %417)
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 11
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @write_big_endian_word(i32 %423)
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 2
  %427 = load i8*, i8** %426, align 8
  %428 = call i32 @write_string(i8* %427)
  %429 = load i32, i32* %4, align 4
  %430 = and i32 %429, 1
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %407
  %433 = call i32 @write_byte(i32 0)
  br label %434

434:                                              ; preds = %432, %407
  br label %435

435:                                              ; preds = %434
  %436 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 12
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %437, align 8
  store %struct.TYPE_11__* %438, %struct.TYPE_11__** %1, align 8
  br label %404

439:                                              ; preds = %404
  %440 = call i32 (...) @fill_sector()
  %441 = load i64, i64* @joliet, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %533

443:                                              ; preds = %439
  %444 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %444, i32* @joliet_little_endian_path_table_sector, align 4
  %445 = call i32 @write_byte(i32 1)
  %446 = call i32 @write_byte(i32 0)
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 3), align 8
  %448 = call i32 @write_little_endian_dword(i32 %447)
  %449 = call i32 @write_little_endian_word(i32 1)
  %450 = call i32 @write_byte(i32 0)
  %451 = call i32 @write_byte(i32 0)
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 12), align 8
  store %struct.TYPE_11__* %452, %struct.TYPE_11__** %1, align 8
  br label %453

453:                                              ; preds = %479, %443
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %455 = icmp ne %struct.TYPE_11__* %454, null
  br i1 %455, label %456, label %483

456:                                              ; preds = %453
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 4
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 @strlen(i8* %459)
  %461 = mul nsw i32 %460, 2
  store i32 %461, i32* %4, align 4
  %462 = load i32, i32* %4, align 4
  %463 = call i32 @write_byte(i32 %462)
  %464 = call i32 @write_byte(i32 0)
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @write_little_endian_dword(i32 %467)
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 11
  %471 = load %struct.TYPE_11__*, %struct.TYPE_11__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @write_little_endian_word(i32 %473)
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 4
  %477 = load i8*, i8** %476, align 8
  %478 = call i32 @write_string_as_big_endian_unicode(i8* %477)
  br label %479

479:                                              ; preds = %456
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 12
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %481, align 8
  store %struct.TYPE_11__* %482, %struct.TYPE_11__** %1, align 8
  br label %453

483:                                              ; preds = %453
  %484 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %485 = load i32, i32* @joliet_little_endian_path_table_sector, align 4
  %486 = sub nsw i32 %484, %485
  %487 = load i32, i32* @SECTOR_SIZE, align 4
  %488 = mul nsw i32 %486, %487
  %489 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 1), align 4
  %490 = add nsw i32 %488, %489
  store i32 %490, i32* @joliet_path_table_size, align 4
  %491 = call i32 (...) @fill_sector()
  %492 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %492, i32* @joliet_big_endian_path_table_sector, align 4
  %493 = call i32 @write_byte(i32 1)
  %494 = call i32 @write_byte(i32 0)
  %495 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 3), align 8
  %496 = call i32 @write_big_endian_dword(i32 %495)
  %497 = call i32 @write_big_endian_word(i32 1)
  %498 = call i32 @write_byte(i32 0)
  %499 = call i32 @write_byte(i32 0)
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @root, i32 0, i32 12), align 8
  store %struct.TYPE_11__* %500, %struct.TYPE_11__** %1, align 8
  br label %501

501:                                              ; preds = %527, %483
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %503 = icmp ne %struct.TYPE_11__* %502, null
  br i1 %503, label %504, label %531

504:                                              ; preds = %501
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 4
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 @strlen(i8* %507)
  %509 = mul nsw i32 %508, 2
  store i32 %509, i32* %4, align 4
  %510 = load i32, i32* %4, align 4
  %511 = call i32 @write_byte(i32 %510)
  %512 = call i32 @write_byte(i32 0)
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @write_big_endian_dword(i32 %515)
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 11
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @write_big_endian_word(i32 %521)
  %523 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 4
  %525 = load i8*, i8** %524, align 8
  %526 = call i32 @write_string_as_big_endian_unicode(i8* %525)
  br label %527

527:                                              ; preds = %504
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %529 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %528, i32 0, i32 12
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %529, align 8
  store %struct.TYPE_11__* %530, %struct.TYPE_11__** %1, align 8
  br label %501

531:                                              ; preds = %501
  %532 = call i32 (...) @fill_sector()
  br label %533

533:                                              ; preds = %531, %439
  store %struct.TYPE_11__* @root, %struct.TYPE_11__** %1, align 8
  br label %534

534:                                              ; preds = %766, %533
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %536 = icmp ne %struct.TYPE_11__* %535, null
  br i1 %536, label %537, label %770

537:                                              ; preds = %534
  %538 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i32 0, i32 0
  store i32 %538, i32* %540, align 8
  %541 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %542 = load i32, i32* @DOT_RECORD, align 4
  %543 = load i32, i32* @FALSE, align 4
  %544 = call i32 @write_directory_record(%struct.TYPE_11__* %541, i32 %542, i32 %543)
  %545 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %546 = icmp eq %struct.TYPE_11__* %545, @root
  br i1 %546, label %547, label %549

547:                                              ; preds = %537
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  br label %553

549:                                              ; preds = %537
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 11
  %552 = load %struct.TYPE_11__*, %struct.TYPE_11__** %551, align 8
  br label %553

553:                                              ; preds = %549, %547
  %554 = phi %struct.TYPE_11__* [ %548, %547 ], [ %552, %549 ]
  %555 = load i32, i32* @DOT_DOT_RECORD, align 4
  %556 = load i32, i32* @FALSE, align 4
  %557 = call i32 @write_directory_record(%struct.TYPE_11__* %554, i32 %555, i32 %556)
  %558 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 10
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %559, align 8
  store %struct.TYPE_11__* %560, %struct.TYPE_11__** %2, align 8
  br label %561

561:                                              ; preds = %580, %553
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %563 = icmp ne %struct.TYPE_11__* %562, null
  br i1 %563, label %564, label %584

564:                                              ; preds = %561
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i32 0, i32 5
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* @DIRECTORY_FLAG, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %564
  %573 = load i32, i32* @SUBDIRECTORY_RECORD, align 4
  br label %576

574:                                              ; preds = %564
  %575 = load i32, i32* @FILE_RECORD, align 4
  br label %576

576:                                              ; preds = %574, %572
  %577 = phi i32 [ %573, %572 ], [ %575, %574 ]
  %578 = load i32, i32* @FALSE, align 4
  %579 = call i32 @write_directory_record(%struct.TYPE_11__* %565, i32 %577, i32 %578)
  br label %580

580:                                              ; preds = %576
  %581 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %582 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %581, i32 0, i32 9
  %583 = load %struct.TYPE_11__*, %struct.TYPE_11__** %582, align 8
  store %struct.TYPE_11__* %583, %struct.TYPE_11__** %2, align 8
  br label %561

584:                                              ; preds = %561
  %585 = call i32 (...) @fill_sector()
  %586 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = sub nsw i32 %586, %589
  %591 = load i32, i32* @SECTOR_SIZE, align 4
  %592 = mul nsw i32 %590, %591
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %593, i32 0, i32 6
  store i32 %592, i32* %594, align 4
  %595 = load i64, i64* @joliet, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %660

597:                                              ; preds = %584
  %598 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %599 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 3
  store i32 %598, i32* %600, align 8
  %601 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %602 = load i32, i32* @DOT_RECORD, align 4
  %603 = load i32, i32* @TRUE, align 4
  %604 = call i32 @write_directory_record(%struct.TYPE_11__* %601, i32 %602, i32 %603)
  %605 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %606 = icmp eq %struct.TYPE_11__* %605, @root
  br i1 %606, label %607, label %609

607:                                              ; preds = %597
  %608 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  br label %613

609:                                              ; preds = %597
  %610 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %611 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i32 0, i32 11
  %612 = load %struct.TYPE_11__*, %struct.TYPE_11__** %611, align 8
  br label %613

613:                                              ; preds = %609, %607
  %614 = phi %struct.TYPE_11__* [ %608, %607 ], [ %612, %609 ]
  %615 = load i32, i32* @DOT_DOT_RECORD, align 4
  %616 = load i32, i32* @TRUE, align 4
  %617 = call i32 @write_directory_record(%struct.TYPE_11__* %614, i32 %615, i32 %616)
  %618 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %619 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %618, i32 0, i32 10
  %620 = load %struct.TYPE_11__*, %struct.TYPE_11__** %619, align 8
  store %struct.TYPE_11__* %620, %struct.TYPE_11__** %2, align 8
  br label %621

621:                                              ; preds = %640, %613
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %623 = icmp ne %struct.TYPE_11__* %622, null
  br i1 %623, label %624, label %644

624:                                              ; preds = %621
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %626 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %626, i32 0, i32 5
  %628 = load i32, i32* %627, align 8
  %629 = load i32, i32* @DIRECTORY_FLAG, align 4
  %630 = and i32 %628, %629
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %624
  %633 = load i32, i32* @SUBDIRECTORY_RECORD, align 4
  br label %636

634:                                              ; preds = %624
  %635 = load i32, i32* @FILE_RECORD, align 4
  br label %636

636:                                              ; preds = %634, %632
  %637 = phi i32 [ %633, %632 ], [ %635, %634 ]
  %638 = load i32, i32* @TRUE, align 4
  %639 = call i32 @write_directory_record(%struct.TYPE_11__* %625, i32 %637, i32 %638)
  br label %640

640:                                              ; preds = %636
  %641 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %642 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %641, i32 0, i32 9
  %643 = load %struct.TYPE_11__*, %struct.TYPE_11__** %642, align 8
  store %struct.TYPE_11__* %643, %struct.TYPE_11__** %2, align 8
  br label %621

644:                                              ; preds = %621
  %645 = call i32 (...) @fill_sector()
  %646 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %647 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %648 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %647, i32 0, i32 3
  %649 = load i32, i32* %648, align 8
  %650 = sub nsw i32 %646, %649
  %651 = load i32, i32* @SECTOR_SIZE, align 4
  %652 = mul nsw i32 %650, %651
  %653 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %654 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %653, i32 0, i32 7
  store i32 %652, i32* %654, align 8
  %655 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %656 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %655, i32 0, i32 7
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* @bytes_in_directories, align 4
  %659 = add nsw i32 %658, %657
  store i32 %659, i32* @bytes_in_directories, align 4
  br label %660

660:                                              ; preds = %644, %584
  %661 = load i32, i32* @number_of_directories, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* @number_of_directories, align 4
  %663 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %664 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %663, i32 0, i32 6
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* @bytes_in_directories, align 4
  %667 = add nsw i32 %666, %665
  store i32 %667, i32* @bytes_in_directories, align 4
  %668 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %669 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %668, i32 0, i32 10
  %670 = load %struct.TYPE_11__*, %struct.TYPE_11__** %669, align 8
  store %struct.TYPE_11__* %670, %struct.TYPE_11__** %2, align 8
  br label %671

671:                                              ; preds = %761, %660
  %672 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %673 = icmp ne %struct.TYPE_11__* %672, null
  br i1 %673, label %674, label %765

674:                                              ; preds = %671
  %675 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %675, i32 0, i32 5
  %677 = load i32, i32* %676, align 8
  %678 = load i32, i32* @DIRECTORY_FLAG, align 4
  %679 = and i32 %677, %678
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %760

681:                                              ; preds = %674
  %682 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %683 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %684 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %683, i32 0, i32 3
  store i32 %682, i32* %684, align 8
  %685 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %686 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %685, i32 0, i32 0
  store i32 %682, i32* %686, align 8
  %687 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %688 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %687, i32 0, i32 6
  %689 = load i32, i32* %688, align 4
  store i32 %689, i32* %5, align 4
  %690 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 2), align 8
  %691 = icmp eq i32* %690, null
  br i1 %691, label %692, label %714

692:                                              ; preds = %681
  %693 = load i32, i32* %5, align 4
  %694 = load i32, i32* @SECTOR_SIZE, align 4
  %695 = add nsw i32 %693, %694
  %696 = sub nsw i32 %695, 1
  %697 = load i32, i32* @SECTOR_SIZE, align 4
  %698 = sdiv i32 %696, %697
  store i32 %698, i32* %6, align 4
  %699 = load i32, i32* %6, align 4
  %700 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %701 = add nsw i32 %700, %699
  store i32 %701, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  %702 = load i32, i32* @number_of_files, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* @number_of_files, align 4
  %704 = load i32, i32* %5, align 4
  %705 = load i32, i32* @bytes_in_files, align 4
  %706 = add nsw i32 %705, %704
  store i32 %706, i32* @bytes_in_files, align 4
  %707 = load i32, i32* %6, align 4
  %708 = load i32, i32* @SECTOR_SIZE, align 4
  %709 = mul nsw i32 %707, %708
  %710 = load i32, i32* %5, align 4
  %711 = sub nsw i32 %709, %710
  %712 = load i32, i32* @unused_bytes_at_ends_of_files, align 4
  %713 = add nsw i32 %712, %711
  store i32 %713, i32* @unused_bytes_at_ends_of_files, align 4
  br label %759

714:                                              ; preds = %681
  %715 = load i8*, i8** @end_source, align 8
  store i8* %715, i8** %7, align 8
  %716 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %717 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %716, i32 0, i32 8
  %718 = load i8*, i8** %717, align 8
  %719 = icmp ne i8* %718, null
  br i1 %719, label %725, label %720

720:                                              ; preds = %714
  %721 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %722 = call i32 @get_file_specifications(%struct.TYPE_11__* %721)
  %723 = load i8*, i8** @end_source, align 8
  store i8 0, i8* %723, align 1
  %724 = load i8*, i8** @source, align 8
  store i8* %724, i8** %12, align 8
  br label %729

725:                                              ; preds = %714
  %726 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %727 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %726, i32 0, i32 8
  %728 = load i8*, i8** %727, align 8
  store i8* %728, i8** %12, align 8
  br label %729

729:                                              ; preds = %725, %720
  %730 = load i64, i64* @verbosity, align 8
  %731 = load i64, i64* @VERBOSE, align 8
  %732 = icmp eq i64 %730, %731
  br i1 %732, label %733, label %736

733:                                              ; preds = %729
  %734 = load i8*, i8** %12, align 8
  %735 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %734)
  br label %736

736:                                              ; preds = %733, %729
  %737 = load i8*, i8** %12, align 8
  %738 = call i32* @fopen(i8* %737, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %738, i32** %8, align 8
  %739 = load i32*, i32** %8, align 8
  %740 = icmp eq i32* %739, null
  br i1 %740, label %741, label %744

741:                                              ; preds = %736
  %742 = load i8*, i8** %12, align 8
  %743 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %742)
  br label %744

744:                                              ; preds = %741, %736
  %745 = load i32*, i32** %8, align 8
  %746 = load i32, i32* %5, align 4
  %747 = call i32 @write_from_file(i32* %745, i32 %746)
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %754, label %749

749:                                              ; preds = %744
  %750 = load i32*, i32** %8, align 8
  %751 = call i32 @fclose(i32* %750)
  %752 = load i8*, i8** %12, align 8
  %753 = call i32 (i8*, ...) @error_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %752)
  br label %754

754:                                              ; preds = %749, %744
  %755 = load i32*, i32** %8, align 8
  %756 = call i32 @fclose(i32* %755)
  %757 = load i8*, i8** %7, align 8
  store i8* %757, i8** @end_source, align 8
  %758 = call i32 (...) @fill_sector()
  br label %759

759:                                              ; preds = %754, %692
  br label %760

760:                                              ; preds = %759, %674
  br label %761

761:                                              ; preds = %760
  %762 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %763 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %762, i32 0, i32 9
  %764 = load %struct.TYPE_11__*, %struct.TYPE_11__** %763, align 8
  store %struct.TYPE_11__* %764, %struct.TYPE_11__** %2, align 8
  br label %671

765:                                              ; preds = %671
  br label %766

766:                                              ; preds = %765
  %767 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %768 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %767, i32 0, i32 12
  %769 = load %struct.TYPE_11__*, %struct.TYPE_11__** %768, align 8
  store %struct.TYPE_11__* %769, %struct.TYPE_11__** %1, align 8
  br label %534

770:                                              ; preds = %534
  %771 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cd, i32 0, i32 0), align 8
  store i32 %771, i32* @total_sectors, align 4
  ret void
}

declare dso_local i32 @get_time_string(i8*) #1

declare dso_local i32 @write_block(i32, i32) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_byte(i32) #1

declare dso_local i32 @write_bytecounted_string(i32, i8*, i8 signext) #1

declare dso_local i32 @write_both_endian_dword(i32) #1

declare dso_local i32 @write_both_endian_word(i32) #1

declare dso_local i32 @write_little_endian_dword(i32) #1

declare dso_local i32 @write_big_endian_dword(i32) #1

declare dso_local i32 @write_directory_record(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @fill_sector(...) #1

declare dso_local i32 @write_bytecounted_string_as_big_endian_unicode(i32, i8*, i8 signext) #1

declare dso_local i32 @write_little_endian_word(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error_exit(i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @write_from_file(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_big_endian_word(i32) #1

declare dso_local i32 @write_string_as_big_endian_unicode(i8*) #1

declare dso_local i32 @get_file_specifications(%struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
