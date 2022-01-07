; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_tablecolumns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_tablecolumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32*, i64, i64, i64, i8*, i8* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@szColumns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't load _Columns table\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Couldn't find id for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Table id is %d, row count is %d\0A\00", align 1
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"column %d out of range (maxcount: %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"duplicate column %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s has %d columns\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"missing column in table %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i64*)* @get_tablecolumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_tablecolumns(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_18__* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %15, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @debugstr_w(i32 %21)
  %23 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = call i64 @get_defaulttablecolumns(%struct.TYPE_17__* %24, i32 %25, %struct.TYPE_18__* %26, i64* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %5, align 8
  br label %235

38:                                               ; preds = %32, %4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = load i32, i32* @szColumns, align 4
  %41 = call i64 @get_table(%struct.TYPE_17__* %39, i32 %40, %struct.TYPE_16__** %16)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %47, i64* %5, align 8
  br label %235

48:                                               ; preds = %38
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @msi_string2id(i32 %51, i32 %52, i32 -1, i64* %13)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @debugstr_w(i32 %58)
  %60 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %5, align 8
  br label %235

62:                                               ; preds = %48
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = load i64, i64* %15, align 8
  %73 = mul i64 %72, 56
  %74 = call i32 @memset(%struct.TYPE_18__* %71, i32 0, i64 %73)
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %205, %75
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %208

83:                                               ; preds = %79
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* @LONG_STR_BYTES, align 4
  %89 = call i64 @read_table_int(i32 %86, i64 %87, i32 0, i32 %88)
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %205

93:                                               ; preds = %83
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = icmp ne %struct.TYPE_18__* %94, null
  br i1 %95, label %96, label %202

96:                                               ; preds = %93
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @LONG_STR_BYTES, align 4
  %108 = call i64 @read_table_int(i32 %99, i64 %100, i32 %106, i32 %107)
  store i64 %108, i64* %17, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @read_table_int(i32 %111, i64 %112, i32 %118, i32 4)
  %120 = sub nsw i64 %119, 32768
  store i64 %120, i64* %18, align 8
  %121 = load i64, i64* %18, align 8
  %122 = icmp slt i64 %121, 1
  br i1 %122, label %127, label %123

123:                                              ; preds = %96
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123, %96
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %128, i64 %129)
  br label %205

131:                                              ; preds = %123
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = load i64, i64* %18, align 8
  %134 = sub nsw i64 %133, 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i64, i64* %18, align 8
  %141 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %140)
  br label %205

142:                                              ; preds = %131
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %13, align 8
  %147 = call i8* @msi_string_lookup(i32 %145, i64 %146, i32* null)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = load i64, i64* %18, align 8
  %150 = sub nsw i64 %149, 1
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 6
  store i8* %147, i8** %152, align 8
  %153 = load i64, i64* %18, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = load i64, i64* %18, align 8
  %157 = sub nsw i64 %156, 1
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %17, align 8
  %164 = call i8* @msi_string_lookup(i32 %162, i64 %163, i32* null)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = load i64, i64* %18, align 8
  %167 = sub nsw i64 %166, 1
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 5
  store i8* %164, i8** %169, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 3
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @read_table_int(i32 %172, i64 %173, i32 %179, i32 4)
  %181 = sub nsw i64 %180, 32768
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = load i64, i64* %18, align 8
  %184 = sub nsw i64 %183, 1
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 4
  store i64 %181, i64* %186, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %188 = load i64, i64* %18, align 8
  %189 = sub nsw i64 %188, 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %193 = load i64, i64* %18, align 8
  %194 = sub nsw i64 %193, 1
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %198 = load i64, i64* %18, align 8
  %199 = sub nsw i64 %198, 1
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  store i32* null, i32** %201, align 8
  br label %202

202:                                              ; preds = %142, %93
  %203 = load i64, i64* %12, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %12, align 8
  br label %205

205:                                              ; preds = %202, %139, %127, %92
  %206 = load i64, i64* %11, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %11, align 8
  br label %79

208:                                              ; preds = %79
  %209 = load i32, i32* %7, align 4
  %210 = call i64 @debugstr_w(i32 %209)
  %211 = load i64, i64* %12, align 8
  %212 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %210, i64 %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %214 = icmp ne %struct.TYPE_18__* %213, null
  br i1 %214, label %215, label %227

215:                                              ; preds = %208
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* %15, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load i32, i32* %7, align 4
  %221 = call i64 @debugstr_w(i32 %220)
  %222 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %221)
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %224 = load i64, i64* %15, align 8
  %225 = call i32 @msi_free_colinfo(%struct.TYPE_18__* %223, i64 %224)
  %226 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %226, i64* %5, align 8
  br label %235

227:                                              ; preds = %215, %208
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %230 = load i64, i64* %12, align 8
  %231 = call i32 @table_calc_column_offsets(%struct.TYPE_17__* %228, %struct.TYPE_18__* %229, i64 %230)
  %232 = load i64, i64* %12, align 8
  %233 = load i64*, i64** %9, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %234, i64* %5, align 8
  br label %235

235:                                              ; preds = %227, %219, %57, %45, %36
  %236 = load i64, i64* %5, align 8
  ret i64 %236
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i64 @debugstr_w(i32) #1

declare dso_local i64 @get_defaulttablecolumns(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i64*) #1

declare dso_local i64 @get_table(%struct.TYPE_17__*, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @msi_string2id(i32, i32, i32, i64*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i64 @read_table_int(i32, i64, i32, i32) #1

declare dso_local i8* @msi_string_lookup(i32, i64, i32*) #1

declare dso_local i32 @msi_free_colinfo(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @table_calc_column_offsets(%struct.TYPE_17__*, %struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
