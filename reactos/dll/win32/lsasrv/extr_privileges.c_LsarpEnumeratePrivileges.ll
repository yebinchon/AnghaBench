; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_privileges.c_LsarpEnumeratePrivileges.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_privileges.c_LsarpEnumeratePrivileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_11__* }

@FALSE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@WellKnownPrivileges = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"EnumIndex: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Privilege Name: %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Name Length: %lu\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"EnumCount: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"RequiredLength: %lu\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@STATUS_MORE_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsarpEnumeratePrivileges(i64* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %71, %3
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %21 = call i64 @ARRAYSIZE(%struct.TYPE_12__* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wcslen(i64 %36)
  %38 = sext i32 %37 to i64
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @wcslen(i64 %45)
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = add i64 %40, %48
  %50 = add i64 %49, 4
  %51 = add i64 %50, 4
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %23
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %12, align 8
  br label %74

56:                                               ; preds = %23
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @wcslen(i64 %61)
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = add i64 %64, 4
  %66 = add i64 %65, 4
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %18

74:                                               ; preds = %54, %18
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %184

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  %84 = mul i64 %83, 4
  %85 = call i8* @MIDL_user_allocate(i64 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %7, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = icmp eq %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %90, i64* %13, align 8
  br label %184

91:                                               ; preds = %82
  %92 = load i64*, i64** %4, align 8
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %94

94:                                               ; preds = %178, %91
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %183

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @wcslen(i64 %112)
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store i32 %130, i32* %135, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = call i8* @MIDL_user_allocate(i64 %142)
  %144 = bitcast i8* %143 to %struct.TYPE_11__*
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = icmp eq %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %98
  %158 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %158, i64* %13, align 8
  br label %184

159:                                              ; preds = %98
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WellKnownPrivileges, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @memcpy(%struct.TYPE_11__* %165, i64 %170, i32 %176)
  br label %178

178:                                              ; preds = %159
  %179 = load i64, i64* %11, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %11, align 8
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %8, align 8
  br label %94

183:                                              ; preds = %94
  br label %184

184:                                              ; preds = %183, %157, %89, %81
  %185 = load i64, i64* %13, align 8
  %186 = call i64 @NT_SUCCESS(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load i64, i64* %9, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store %struct.TYPE_11__* %192, %struct.TYPE_11__** %194, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i64*, i64** %4, align 8
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %195
  store i64 %198, i64* %196, align 8
  br label %231

199:                                              ; preds = %184
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = icmp ne %struct.TYPE_11__* %200, null
  br i1 %201, label %202, label %230

202:                                              ; preds = %199
  store i64 0, i64* %11, align 8
  br label %203

203:                                              ; preds = %224, %202
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %9, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %203
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = load i64, i64* %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = icmp ne %struct.TYPE_11__* %213, null
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = call i32 @MIDL_user_free(%struct.TYPE_11__* %221)
  br label %223

223:                                              ; preds = %215, %207
  br label %224

224:                                              ; preds = %223
  %225 = load i64, i64* %11, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %11, align 8
  br label %203

227:                                              ; preds = %203
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %229 = call i32 @MIDL_user_free(%struct.TYPE_11__* %228)
  br label %230

230:                                              ; preds = %227, %199
  br label %231

231:                                              ; preds = %230, %188
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @STATUS_SUCCESS, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* @FALSE, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i64, i64* @STATUS_MORE_ENTRIES, align 8
  store i64 %240, i64* %13, align 8
  br label %241

241:                                              ; preds = %239, %235, %231
  %242 = load i64, i64* %13, align 8
  ret i64 %242
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i8* @MIDL_user_allocate(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @MIDL_user_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
