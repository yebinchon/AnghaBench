; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_search_domain_for_zone.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_search_domain_for_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to open domain key %s: %d\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to query info for key %s: %d\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to open subdomain key %s of %s: %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i64, i64*)* @search_domain_for_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_domain_for_zone(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %205

34:                                               ; preds = %7
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @TRUE, align 8
  %38 = call i64 @matches_domain_pattern(i64 %35, i64 %36, i64 %37, i64* %19)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %205

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @RegOpenKeyW(i32 %41, i64 %42, i32* %17)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @debugstr_w(i64 %48)
  %50 = load i64, i64* %18, align 8
  %51 = call i32 (i8*, i32, i64, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %50)
  %52 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %52, i32* %8, align 4
  br label %214

53:                                               ; preds = %40
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %17, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i64*, i64** %15, align 8
  %61 = call i64 @get_zone_for_scheme(i32 %58, i64 %59, i64* %60)
  store i64 %61, i64* %16, align 8
  br label %202

62:                                               ; preds = %53
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %23, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @find_domain_name(i64 %64, i64 %65, i32* %20)
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @RegQueryInfoKeyW(i32 %67, i32* null, i32* null, i32* null, i64* %21, i64* %22, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @debugstr_w(i64 %73)
  %75 = load i64, i64* %18, align 8
  %76 = call i32 (i8*, i32, i64, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %74, i64 %75)
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @RegCloseKey(i32 %77)
  %79 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %79, i32* %8, align 4
  br label %214

80:                                               ; preds = %62
  %81 = load i64, i64* %21, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %182

83:                                               ; preds = %80
  %84 = load i64, i64* %22, align 8
  %85 = add nsw i64 %84, 1
  %86 = mul i64 %85, 4
  %87 = call i32* @heap_alloc(i64 %86)
  store i32* %87, i32** %24, align 8
  %88 = load i32*, i32** %24, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  %93 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %93, i32* %8, align 4
  br label %214

94:                                               ; preds = %83
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %13, align 8
  %98 = sub nsw i64 %96, %97
  %99 = sub nsw i64 %98, 1
  %100 = call i32* @heap_strndupW(i64 %95, i64 %99)
  store i32* %100, i32** %25, align 8
  %101 = load i32*, i32** %25, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %94
  %104 = load i32*, i32** %24, align 8
  %105 = call i32 @heap_free(i32* %104)
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @RegCloseKey(i32 %106)
  %108 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %108, i32* %8, align 4
  br label %214

109:                                              ; preds = %94
  store i64 0, i64* %26, align 8
  br label %110

110:                                              ; preds = %174, %109
  %111 = load i64, i64* %26, align 8
  %112 = load i64, i64* %21, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %177

114:                                              ; preds = %110
  %115 = load i64, i64* %22, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %27, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i64, i64* %26, align 8
  %119 = load i32*, i32** %24, align 8
  %120 = call i64 @RegEnumKeyExW(i32 %117, i64 %118, i32* %119, i64* %27, i32* null, i32* null, i32* null, i32* null)
  store i64 %120, i64* %18, align 8
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load i32*, i32** %25, align 8
  %126 = call i32 @heap_free(i32* %125)
  %127 = load i32*, i32** %24, align 8
  %128 = call i32 @heap_free(i32* %127)
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @RegCloseKey(i32 %129)
  %131 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %131, i32* %8, align 4
  br label %214

132:                                              ; preds = %114
  %133 = load i32*, i32** %24, align 8
  %134 = ptrtoint i32* %133 to i64
  %135 = load i32*, i32** %25, align 8
  %136 = ptrtoint i32* %135 to i64
  %137 = load i64, i64* @FALSE, align 8
  %138 = bitcast i32** %28 to i64*
  %139 = call i64 @matches_domain_pattern(i64 %134, i64 %136, i64 %137, i64* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %132
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %24, align 8
  %144 = ptrtoint i32* %143 to i64
  %145 = call i64 @RegOpenKeyW(i32 %142, i64 %144, i32* %29)
  store i64 %145, i64* %18, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* @ERROR_SUCCESS, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load i32*, i32** %24, align 8
  %151 = ptrtoint i32* %150 to i64
  %152 = call i32 @debugstr_w(i64 %151)
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @debugstr_w(i64 %153)
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %18, align 8
  %157 = call i32 (i8*, i32, i64, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %152, i64 %155, i64 %156)
  %158 = load i32*, i32** %25, align 8
  %159 = call i32 @heap_free(i32* %158)
  %160 = load i32*, i32** %24, align 8
  %161 = call i32 @heap_free(i32* %160)
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @RegCloseKey(i32 %162)
  %164 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %164, i32* %8, align 4
  br label %214

165:                                              ; preds = %141
  %166 = load i32, i32* %29, align 4
  %167 = load i64, i64* %12, align 8
  %168 = load i64*, i64** %15, align 8
  %169 = call i64 @get_zone_for_scheme(i32 %166, i64 %167, i64* %168)
  store i64 %169, i64* %16, align 8
  %170 = load i64, i64* @FALSE, align 8
  store i64 %170, i64* %23, align 8
  %171 = load i32, i32* %29, align 4
  %172 = call i32 @RegCloseKey(i32 %171)
  br label %177

173:                                              ; preds = %132
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %26, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %26, align 8
  br label %110

177:                                              ; preds = %165, %110
  %178 = load i32*, i32** %24, align 8
  %179 = call i32 @heap_free(i32* %178)
  %180 = load i32*, i32** %25, align 8
  %181 = call i32 @heap_free(i32* %180)
  br label %182

182:                                              ; preds = %177, %80
  %183 = load i64, i64* %23, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %182
  %186 = load i32, i32* %20, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %185
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %13, align 8
  %192 = sub nsw i64 %190, %191
  %193 = sub nsw i64 %192, 1
  %194 = call i32 @strchrW(i64 %189, i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %188
  %197 = load i32, i32* %17, align 4
  %198 = load i64, i64* %12, align 8
  %199 = load i64*, i64** %15, align 8
  %200 = call i64 @get_zone_for_scheme(i32 %197, i64 %198, i64* %199)
  store i64 %200, i64* %16, align 8
  br label %201

201:                                              ; preds = %196, %188, %185, %182
  br label %202

202:                                              ; preds = %201, %57
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @RegCloseKey(i32 %203)
  br label %205

205:                                              ; preds = %202, %34, %7
  %206 = load i64, i64* %16, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @S_OK, align 4
  br label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @S_FALSE, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %212, %149, %124, %103, %90, %72, %47
  %215 = load i32, i32* %8, align 4
  ret i32 %215
}

declare dso_local i64 @matches_domain_pattern(i64, i64, i64, i64*) #1

declare dso_local i64 @RegOpenKeyW(i32, i64, i32*) #1

declare dso_local i32 @ERR(i8*, i32, i64, ...) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i64 @get_zone_for_scheme(i32, i64, i64*) #1

declare dso_local i32 @find_domain_name(i64, i64, i32*) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i32* @heap_strndupW(i64, i64) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strchrW(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
