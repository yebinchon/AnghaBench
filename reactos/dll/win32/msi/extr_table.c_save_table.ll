; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_save_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_save_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32**, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Saving %s\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@LONG_STR_BYTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"oops - unknown column width %d\0A\00", align 1
@MSITYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"string id %u out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"writing %d bytes\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64)* @save_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @save_table(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %21 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSICONDITION_FALSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %28, i64* %4, align 8
  br label %224

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @debugstr_w(i32 %32)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @msi_table_get_row_size(%struct.TYPE_10__* %35, %struct.TYPE_11__* %38, i64 %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %63, %29
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i64 1, i64* %13, align 8
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = mul i64 %67, %68
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32* @msi_alloc_zero(i64 %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %75, i64* %14, align 8
  br label %220

76:                                               ; preds = %66
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %77

77:                                               ; preds = %204, %76
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %207

81:                                               ; preds = %77
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %207

90:                                               ; preds = %81
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %197, %90
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %200

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %102
  %104 = load i64, i64* @LONG_STR_BYTES, align 8
  %105 = call i64 @bytes_per_column(%struct.TYPE_10__* %98, %struct.TYPE_11__* %103, i64 %104)
  store i64 %105, i64* %17, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %110
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @bytes_per_column(%struct.TYPE_10__* %106, %struct.TYPE_11__* %111, i64 %112)
  store i64 %113, i64* %18, align 8
  %114 = load i64, i64* %18, align 8
  %115 = icmp ne i64 %114, 2
  br i1 %115, label %116, label %125

116:                                              ; preds = %97
  %117 = load i64, i64* %18, align 8
  %118 = icmp ne i64 %117, 3
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i64, i64* %18, align 8
  %121 = icmp ne i64 %120, 4
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i64, i64* %18, align 8
  %124 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %123)
  br label %220

125:                                              ; preds = %119, %116, %97
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MSITYPE_STRING, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %125
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %17, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %136
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* @LONG_STR_BYTES, align 8
  %147 = call i64 @read_table_int(i32** %143, i64 %144, i64 %145, i64 %146)
  store i64 %147, i64* %20, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %7, align 8
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = shl i32 1, %151
  %153 = sext i32 %152 to i64
  %154 = icmp ugt i64 %148, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %140
  %156 = load i64, i64* %20, align 8
  %157 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %156)
  br label %220

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158, %136, %125
  store i64 0, i64* %19, align 8
  br label %160

160:                                              ; preds = %187, %159
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* %18, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %160
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  %167 = load i32**, i32*** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i32*, i32** %167, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* %19, align 8
  %173 = add i64 %171, %172
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %13, align 8
  %179 = mul i64 %177, %178
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %18, align 8
  %182 = mul i64 %180, %181
  %183 = add i64 %179, %182
  %184 = load i64, i64* %19, align 8
  %185 = add i64 %183, %184
  %186 = getelementptr inbounds i32, i32* %176, i64 %185
  store i32 %175, i32* %186, align 4
  br label %187

187:                                              ; preds = %164
  %188 = load i64, i64* %19, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %19, align 8
  br label %160

190:                                              ; preds = %160
  %191 = load i64, i64* %17, align 8
  %192 = load i64, i64* %16, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %16, align 8
  %194 = load i64, i64* %18, align 8
  %195 = load i64, i64* %15, align 8
  %196 = add i64 %195, %194
  store i64 %196, i64* %15, align 8
  br label %197

197:                                              ; preds = %190
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %11, align 8
  br label %91

200:                                              ; preds = %91
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %9, align 8
  br label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %77

207:                                              ; preds = %89, %77
  %208 = load i64, i64* %9, align 8
  %209 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load i32, i32* @TRUE, align 4
  %219 = call i64 @write_stream_data(i32 %212, i32 %215, i32* %216, i64 %217, i32 %218)
  store i64 %219, i64* %14, align 8
  br label %220

220:                                              ; preds = %207, %155, %122, %74
  %221 = load i32*, i32** %8, align 8
  %222 = call i32 @msi_free(i32* %221)
  %223 = load i64, i64* %14, align 8
  store i64 %223, i64* %4, align 8
  br label %224

224:                                              ; preds = %220, %27
  %225 = load i64, i64* %4, align 8
  ret i64 %225
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @debugstr_w(i32) #1

declare dso_local i64 @msi_table_get_row_size(%struct.TYPE_10__*, %struct.TYPE_11__*, i64, i64) #1

declare dso_local i32* @msi_alloc_zero(i64) #1

declare dso_local i64 @bytes_per_column(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @read_table_int(i32**, i64, i64, i64) #1

declare dso_local i64 @write_stream_data(i32, i32, i32*, i64, i32) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
