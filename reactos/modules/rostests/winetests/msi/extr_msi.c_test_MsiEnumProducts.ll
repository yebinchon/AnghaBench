; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_MsiEnumProducts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_MsiEnumProducts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@is_wow64 = common dso_local global i64 0, align 8
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\Managed\\\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\\Installer\\Products\\\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Software\\Classes\\Installer\\Products\\\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Software\\Microsoft\\Installer\\Products\\\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Expected ERROR_NO_MORE_ITEMS, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"product1 not found\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"product2 not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"product3 not found\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiEnumProducts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiEnumProducts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [39 x i8], align 16
  %7 = alloca [39 x i8], align 16
  %8 = alloca [39 x i8], align 16
  %9 = alloca [39 x i8], align 16
  %10 = alloca [33 x i8], align 16
  %11 = alloca [33 x i8], align 16
  %12 = alloca [33 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i32, i32* @KEY_ALL_ACCESS, align 4
  store i32 %33, i32* %21, align 4
  %34 = getelementptr inbounds [39 x i8], [39 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %36 = call i32 @create_test_guid(i8* %34, i8* %35)
  %37 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %38 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  %39 = call i32 @create_test_guid(i8* %37, i8* %38)
  %40 = getelementptr inbounds [39 x i8], [39 x i8]* %8, i64 0, i64 0
  %41 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %42 = call i32 @create_test_guid(i8* %40, i8* %41)
  %43 = call i8* (...) @get_user_sid()
  store i8* %43, i8** %17, align 8
  %44 = load i64, i64* @is_wow64, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %0
  %47 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %48 = load i32, i32* %21, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %21, align 4
  br label %50

50:                                               ; preds = %46, %0
  %51 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @strcat(i8* %29, i8* %52)
  %54 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %55 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  %56 = call i32 @strcat(i8* %29, i8* %55)
  %57 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i64 @RegCreateKeyExA(i32 %57, i8* %29, i32 0, i32* null, i32 0, i32 %58, i32* null, i32* %19, i32* null)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 @LocalFree(i8* %65)
  store i32 1, i32* %22, align 4
  br label %196

67:                                               ; preds = %50
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  %74 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %75 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %76 = call i32 @strcat(i8* %26, i8* %75)
  %77 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %78 = load i32, i32* %21, align 4
  %79 = call i64 @RegCreateKeyExA(i32 %77, i8* %26, i32 0, i32* null, i32 0, i32 %78, i32* null, i32* %18, i32* null)
  store i64 %79, i64* %1, align 8
  %80 = load i64, i64* %1, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %1, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %87 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %88 = call i32 @strcat(i8* %32, i8* %87)
  %89 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %90 = call i64 @RegCreateKeyA(i32 %89, i8* %32, i32* %20)
  store i64 %90, i64* %1, align 8
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %1, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  store i32 0, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %99 = call i64 @MsiEnumProductsA(i32 %97, i8* %98)
  store i64 %99, i64* %1, align 8
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %1, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @MsiEnumProductsA(i32 %106, i8* null)
  store i64 %107, i64* %1, align 8
  %108 = load i64, i64* %1, align 8
  %109 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %1, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %112)
  store i32 2, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %116 = call i64 @MsiEnumProductsA(i32 %114, i8* %115)
  store i64 %116, i64* %1, align 8
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %1, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %121)
  store i32 0, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %125 = call i64 @MsiEnumProductsA(i32 %123, i8* %124)
  store i64 %125, i64* %1, align 8
  %126 = load i64, i64* %1, align 8
  %127 = load i64, i64* @ERROR_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %1, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %4, align 4
  store i32 %132, i32* %3, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %160, %67
  %134 = load i32, i32* %5, align 4
  %135 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %136 = call i64 @MsiEnumProductsA(i32 %134, i8* %135)
  store i64 %136, i64* %1, align 8
  %137 = load i64, i64* @ERROR_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = getelementptr inbounds [39 x i8], [39 x i8]* %6, i64 0, i64 0
  %141 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %142 = call i32 @strcmp(i8* %140, i8* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %139
  %147 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %148 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %149 = call i32 @strcmp(i8* %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = getelementptr inbounds [39 x i8], [39 x i8]* %8, i64 0, i64 0
  %155 = getelementptr inbounds [39 x i8], [39 x i8]* %9, i64 0, i64 0
  %156 = call i32 @strcmp(i8* %154, i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %133

163:                                              ; preds = %133
  %164 = load i64, i64* %1, align 8
  %165 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %1, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* %2, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %172 = load i32, i32* %3, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %174 = load i32, i32* %4, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %179 = and i32 %177, %178
  %180 = call i32 @delete_key(i32 %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %184 = and i32 %182, %183
  %185 = call i32 @delete_key(i32 %181, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @RegDeleteKeyA(i32 %186, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @RegCloseKey(i32 %188)
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @RegCloseKey(i32 %190)
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @RegCloseKey(i32 %192)
  %194 = load i8*, i8** %17, align 8
  %195 = call i32 @LocalFree(i8* %194)
  store i32 0, i32* %22, align 4
  br label %196

196:                                              ; preds = %163, %63
  %197 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %22, align 4
  switch i32 %198, label %200 [
    i32 0, label %199
    i32 1, label %199
  ]

199:                                              ; preds = %196, %196
  ret void

200:                                              ; preds = %196
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_test_guid(i8*, i8*) #2

declare dso_local i8* @get_user_sid(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i64 @MsiEnumProductsA(i32, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @delete_key(i32, i8*, i32) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
