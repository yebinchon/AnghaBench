; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%llu%%\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%llu.%02llu\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%llu.%02llux\00", align 1
@SPA_VERSION_FEATURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_prop(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = call i64 @zpool_get_state(%struct.TYPE_9__* %18)
  %20 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %61 [
    i32 130, label %24
    i32 132, label %30
    i32 133, label %36
    i32 144, label %44
    i32 142, label %44
    i32 139, label %44
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call i8* @zpool_get_name(%struct.TYPE_9__* %26)
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @strlcpy(i8* %25, i8* %27, i64 %28)
  br label %65

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = call i8* @zpool_get_state_str(%struct.TYPE_9__* %32)
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @strlcpy(i8* %31, i8* %33, i64 %34)
  br label %65

36:                                               ; preds = %22
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @zpool_get_prop_int(%struct.TYPE_9__* %37, i32 %38, i32* %16)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %65

44:                                               ; preds = %22, %22, %22
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = call i64 @zpool_get_all_props(%struct.TYPE_9__* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %44
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @zpool_get_prop_string(%struct.TYPE_9__* %55, i32 %56, i32* %16)
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @strlcpy(i8* %54, i8* %57, i64 %58)
  br label %65

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %22, %60
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @strlcpy(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %53, %36, %30, %24
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %7, align 4
  br label %237

72:                                               ; preds = %6
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = call i64 @zpool_get_all_props(%struct.TYPE_9__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 130
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %237

85:                                               ; preds = %81, %77, %72
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @zpool_prop_get_type(i32 %86)
  switch i32 %87, label %228 [
    i32 146, label %88
    i32 147, label %95
    i32 148, label %214
  ]

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i8* @zpool_get_prop_string(%struct.TYPE_9__* %90, i32 %91, i32* %16)
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @strlcpy(i8* %89, i8* %92, i64 %93)
  br label %230

95:                                               ; preds = %85
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @zpool_get_prop_int(%struct.TYPE_9__* %96, i32 %97, i32* %16)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %208 [
    i32 129, label %100
    i32 145, label %100
    i32 135, label %100
    i32 134, label %100
    i32 131, label %100
    i32 143, label %100
    i32 137, label %114
    i32 140, label %114
    i32 141, label %136
    i32 136, label %150
    i32 138, label %173
    i32 132, label %193
    i32 128, label %199
  ]

100:                                              ; preds = %95, %95, %95, %95, %95, %95
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %104, i64 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %113

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @zfs_nicenum(i32 %109, i8* %110, i64 %111)
  br label %113

113:                                              ; preds = %108, %103
  br label %213

114:                                              ; preds = %95, %95
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @strlcpy(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %135

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %125, i64 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @zfs_nicebytes(i32 %130, i8* %131, i64 %132)
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %117
  br label %213

136:                                              ; preds = %95
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %140, i64 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %149

144:                                              ; preds = %136
  %145 = load i8*, i8** %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %145, i64 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  br label %213

150:                                              ; preds = %95
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @UINT64_MAX, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i8*, i8** %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @strlcpy(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %156)
  br label %172

158:                                              ; preds = %150
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i8*, i8** %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %162, i64 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %171

166:                                              ; preds = %158
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %167, i64 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %154
  br label %213

173:                                              ; preds = %95
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i8*, i8** %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sdiv i32 %179, 100
  %181 = load i32, i32* %14, align 4
  %182 = srem i32 %181, 100
  %183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %177, i64 %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %182)
  br label %192

184:                                              ; preds = %173
  %185 = load i8*, i8** %10, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sdiv i32 %187, 100
  %189 = load i32, i32* %14, align 4
  %190 = srem i32 %189, 100
  %191 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %185, i64 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %184, %176
  br label %213

193:                                              ; preds = %95
  %194 = load i8*, i8** %10, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = call i8* @zpool_get_state_str(%struct.TYPE_9__* %195)
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @strlcpy(i8* %194, i8* %196, i64 %197)
  br label %213

199:                                              ; preds = %95
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @SPA_VERSION_FEATURES, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i8*, i8** %10, align 8
  %205 = load i64, i64* %11, align 8
  %206 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %204, i64 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %213

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %95, %207
  %209 = load i8*, i8** %10, align 8
  %210 = load i64, i64* %11, align 8
  %211 = load i32, i32* %14, align 4
  %212 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %209, i64 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %208, %203, %193, %192, %172, %149, %135, %113
  br label %230

214:                                              ; preds = %85
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @zpool_get_prop_int(%struct.TYPE_9__* %215, i32 %216, i32* %16)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %14, align 4
  %220 = call i32 @zpool_prop_index_to_string(i32 %218, i32 %219, i8** %15)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  store i32 -1, i32* %7, align 4
  br label %237

223:                                              ; preds = %214
  %224 = load i8*, i8** %10, align 8
  %225 = load i8*, i8** %15, align 8
  %226 = load i64, i64* %11, align 8
  %227 = call i32 @strlcpy(i8* %224, i8* %225, i64 %226)
  br label %230

228:                                              ; preds = %85
  %229 = call i32 (...) @abort() #3
  unreachable

230:                                              ; preds = %223, %213, %88
  %231 = load i32*, i32** %12, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %16, align 4
  %235 = load i32*, i32** %12, align 8
  store i32 %234, i32* %235, align 4
  br label %236

236:                                              ; preds = %233, %230
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %236, %222, %84, %71
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i64 @zpool_get_state(%struct.TYPE_9__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @zpool_get_name(%struct.TYPE_9__*) #1

declare dso_local i8* @zpool_get_state_str(%struct.TYPE_9__*) #1

declare dso_local i32 @zpool_get_prop_int(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @zpool_get_all_props(%struct.TYPE_9__*) #1

declare dso_local i8* @zpool_get_prop_string(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @zpool_prop_get_type(i32) #1

declare dso_local i32 @zfs_nicenum(i32, i8*, i64) #1

declare dso_local i32 @zfs_nicebytes(i32, i8*, i64) #1

declare dso_local i32 @zpool_prop_index_to_string(i32, i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
