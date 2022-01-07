; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_create_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_28__*, i32)*, i64 (%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32)*, i32 (%struct.TYPE_28__*)* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_32__*, i32, i64, i32*, i32*, i64 }
%struct.TYPE_32__ = type { i64, i64, i32, i32*, i64, i64, i8*, i8* }

@StringPersistent = common dso_local global i32 0, align 4
@StringNonPersistent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"table %s exists\0A\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@szTables = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CreateView returned %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"tv execute returned %x\0A\00", align 1
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"insert_row returned %x\0A\00", align 1
@szColumns = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_create_table(%struct.TYPE_31__* %0, i32 %1, %struct.TYPE_27__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @StringPersistent, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @StringNonPersistent, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %10, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %14, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @TABLE_Exists(%struct.TYPE_31__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @debugstr_w(i32 %33)
  %35 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  store i64 %36, i64* %5, align 8
  br label %396

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lstrlenW(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = add i64 64, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @msi_alloc(i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %16, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %49, i64* %5, align 8
  br label %396

50:                                               ; preds = %37
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 7
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 6
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 3
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %60, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lstrcpyW(i32 %68, i32 %69)
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %15, align 8
  br label %72

72:                                               ; preds = %80, %50
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %74 = icmp ne %struct.TYPE_27__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  store %struct.TYPE_27__* %83, %struct.TYPE_27__** %15, align 8
  br label %72

84:                                               ; preds = %72
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i8* @msi_alloc(i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_32__*
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 3
  store %struct.TYPE_32__* %92, %struct.TYPE_32__** %94, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %96, align 8
  %98 = icmp ne %struct.TYPE_32__* %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %84
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %101 = call i32 @free_table(%struct.TYPE_29__* %100)
  %102 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %102, i64* %5, align 8
  br label %396

103:                                              ; preds = %84
  store i64 0, i64* %17, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %104, %struct.TYPE_27__** %15, align 8
  br label %105

105:                                              ; preds = %191, %103
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %107 = icmp ne %struct.TYPE_27__* %106, null
  br i1 %107, label %108, label %197

108:                                              ; preds = %105
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @msi_add_string(i32 %111, i32 %114, i32 -1, i32 %115)
  store i64 %116, i64* %18, align 8
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @msi_add_string(i32 %119, i32 %122, i32 -1, i32 %123)
  store i64 %124, i64* %19, align 8
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %18, align 8
  %129 = call i8* @msi_string_lookup(i32 %127, i64 %128, i32* null)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %131, align 8
  %133 = load i64, i64* %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 7
  store i8* %129, i8** %135, align 8
  %136 = load i64, i64* %17, align 8
  %137 = add i64 %136, 1
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %139, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  store i64 %137, i64* %143, align 8
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %19, align 8
  %148 = call i8* @msi_string_lookup(i32 %146, i64 %147, i32* null)
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  %152 = load i64, i64* %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 6
  store i8* %148, i8** %154, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %159, align 8
  %161 = load i64, i64* %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  store i64 %157, i64* %163, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %165, align 8
  %167 = load i64, i64* %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  %173 = load i64, i64* %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %177, align 8
  %179 = load i64, i64* %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 3
  store i32* null, i32** %181, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %186, align 8
  %188 = load i64, i64* %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 2
  store i32 %184, i32* %190, align 8
  br label %191

191:                                              ; preds = %108
  %192 = load i64, i64* %17, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %17, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %195, align 8
  store %struct.TYPE_27__* %196, %struct.TYPE_27__** %15, align 8
  br label %105

197:                                              ; preds = %105
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %200, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @table_calc_column_offsets(%struct.TYPE_31__* %198, %struct.TYPE_32__* %201, i32 %204)
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %207 = load i32, i32* @szTables, align 4
  %208 = call i64 @TABLE_CreateView(%struct.TYPE_31__* %206, i32 %207, %struct.TYPE_28__** %13)
  store i64 %208, i64* %11, align 8
  %209 = load i64, i64* %11, align 8
  %210 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %209)
  %211 = load i64, i64* %11, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %197
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %215 = call i32 @free_table(%struct.TYPE_29__* %214)
  %216 = load i64, i64* %11, align 8
  store i64 %216, i64* %5, align 8
  br label %396

217:                                              ; preds = %197
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i64 (%struct.TYPE_28__*, i32)*, i64 (%struct.TYPE_28__*, i32)** %221, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %224 = call i64 %222(%struct.TYPE_28__* %223, i32 0)
  store i64 %224, i64* %11, align 8
  %225 = load i64, i64* %11, align 8
  %226 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %225)
  %227 = load i64, i64* %11, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  br label %363

230:                                              ; preds = %217
  %231 = call %struct.TYPE_30__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_30__* %231, %struct.TYPE_30__** %14, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %233 = icmp ne %struct.TYPE_30__* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %363

235:                                              ; preds = %230
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %237 = load i32, i32* %7, align 4
  %238 = call i64 @MSI_RecordSetStringW(%struct.TYPE_30__* %236, i32 1, i32 %237)
  store i64 %238, i64* %11, align 8
  %239 = load i64, i64* %11, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %363

242:                                              ; preds = %235
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = load i64 (%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32)*, i64 (%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32)** %246, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %250 = load i64, i64* %9, align 8
  %251 = load i64, i64* @MSICONDITION_FALSE, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i64 %247(%struct.TYPE_28__* %248, %struct.TYPE_30__* %249, i32 -1, i32 %253)
  store i64 %254, i64* %11, align 8
  %255 = load i64, i64* %11, align 8
  %256 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %255)
  %257 = load i64, i64* %11, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %242
  br label %363

260:                                              ; preds = %242
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 2
  %265 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %264, align 8
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %267 = call i32 %265(%struct.TYPE_28__* %266)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %13, align 8
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 0
  %270 = call i32 @msiobj_release(i32* %269)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %14, align 8
  %271 = load i64, i64* %9, align 8
  %272 = load i64, i64* @MSICONDITION_FALSE, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %362

274:                                              ; preds = %260
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %276 = load i32, i32* @szColumns, align 4
  %277 = call i64 @TABLE_CreateView(%struct.TYPE_31__* %275, i32 %276, %struct.TYPE_28__** %13)
  store i64 %277, i64* %11, align 8
  %278 = load i64, i64* %11, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  br label %363

281:                                              ; preds = %274
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i64 (%struct.TYPE_28__*, i32)*, i64 (%struct.TYPE_28__*, i32)** %285, align 8
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %288 = call i64 %286(%struct.TYPE_28__* %287, i32 0)
  store i64 %288, i64* %11, align 8
  %289 = load i64, i64* %11, align 8
  %290 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %289)
  %291 = load i64, i64* %11, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %281
  br label %363

294:                                              ; preds = %281
  %295 = call %struct.TYPE_30__* @MSI_CreateRecord(i32 4)
  store %struct.TYPE_30__* %295, %struct.TYPE_30__** %14, align 8
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %297 = icmp ne %struct.TYPE_30__* %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  br label %363

299:                                              ; preds = %294
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %301 = load i32, i32* %7, align 4
  %302 = call i64 @MSI_RecordSetStringW(%struct.TYPE_30__* %300, i32 1, i32 %301)
  store i64 %302, i64* %11, align 8
  %303 = load i64, i64* %11, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %299
  br label %363

306:                                              ; preds = %299
  store i64 1, i64* %12, align 8
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %307, %struct.TYPE_27__** %15, align 8
  br label %308

308:                                              ; preds = %352, %306
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %310 = icmp ne %struct.TYPE_27__* %309, null
  br i1 %310, label %311, label %356

311:                                              ; preds = %308
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %313 = load i64, i64* %12, align 8
  %314 = call i64 @MSI_RecordSetInteger(%struct.TYPE_30__* %312, i32 2, i64 %313)
  store i64 %314, i64* %11, align 8
  %315 = load i64, i64* %11, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %311
  br label %363

318:                                              ; preds = %311
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = call i64 @MSI_RecordSetStringW(%struct.TYPE_30__* %319, i32 3, i32 %322)
  store i64 %323, i64* %11, align 8
  %324 = load i64, i64* %11, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %363

327:                                              ; preds = %318
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = call i64 @MSI_RecordSetInteger(%struct.TYPE_30__* %328, i32 4, i64 %331)
  store i64 %332, i64* %11, align 8
  %333 = load i64, i64* %11, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %363

336:                                              ; preds = %327
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 1
  %341 = load i64 (%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32)*, i64 (%struct.TYPE_28__*, %struct.TYPE_30__*, i32, i32)** %340, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %344 = load i32, i32* @FALSE, align 4
  %345 = call i64 %341(%struct.TYPE_28__* %342, %struct.TYPE_30__* %343, i32 -1, i32 %344)
  store i64 %345, i64* %11, align 8
  %346 = load i64, i64* %11, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %336
  br label %363

349:                                              ; preds = %336
  %350 = load i64, i64* %12, align 8
  %351 = add i64 %350, 1
  store i64 %351, i64* %12, align 8
  br label %352

352:                                              ; preds = %349
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %354, align 8
  store %struct.TYPE_27__* %355, %struct.TYPE_27__** %15, align 8
  br label %308

356:                                              ; preds = %308
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %358 = icmp ne %struct.TYPE_27__* %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %360, i64* %11, align 8
  br label %361

361:                                              ; preds = %359, %356
  br label %362

362:                                              ; preds = %361, %260
  br label %363

363:                                              ; preds = %362, %348, %335, %326, %317, %305, %298, %293, %280, %259, %241, %234, %229
  %364 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %365 = icmp ne %struct.TYPE_30__* %364, null
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 0, i32 0
  %369 = call i32 @msiobj_release(i32* %368)
  br label %370

370:                                              ; preds = %366, %363
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %372 = icmp ne %struct.TYPE_28__* %371, null
  br i1 %372, label %373, label %381

373:                                              ; preds = %370
  %374 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 2
  %378 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %377, align 8
  %379 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %380 = call i32 %378(%struct.TYPE_28__* %379)
  br label %381

381:                                              ; preds = %373, %370
  %382 = load i64, i64* %11, align 8
  %383 = load i64, i64* @ERROR_SUCCESS, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %391

385:                                              ; preds = %381
  %386 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 2
  %390 = call i32 @list_add_head(i32* %387, i32* %389)
  br label %394

391:                                              ; preds = %381
  %392 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %393 = call i32 @free_table(%struct.TYPE_29__* %392)
  br label %394

394:                                              ; preds = %391, %385
  %395 = load i64, i64* %11, align 8
  store i64 %395, i64* %5, align 8
  br label %396

396:                                              ; preds = %394, %213, %99, %48, %32
  %397 = load i64, i64* %5, align 8
  ret i64 %397
}

declare dso_local i64 @TABLE_Exists(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

declare dso_local i32 @free_table(%struct.TYPE_29__*) #1

declare dso_local i64 @msi_add_string(i32, i32, i32, i32) #1

declare dso_local i8* @msi_string_lookup(i32, i64, i32*) #1

declare dso_local i32 @table_calc_column_offsets(%struct.TYPE_31__*, %struct.TYPE_32__*, i32) #1

declare dso_local i64 @TABLE_CreateView(%struct.TYPE_31__*, i32, %struct.TYPE_28__**) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local %struct.TYPE_30__* @MSI_CreateRecord(i32) #1

declare dso_local i64 @MSI_RecordSetStringW(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_RecordSetInteger(%struct.TYPE_30__*, i32, i64) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
