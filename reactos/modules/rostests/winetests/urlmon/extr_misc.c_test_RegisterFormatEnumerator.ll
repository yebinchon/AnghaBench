; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_RegisterFormatEnumerator.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_RegisterFormatEnumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }

@test_RegisterFormatEnumerator.formatetc = internal global %struct.TYPE_3__ zeroinitializer, align 8
@test_RegisterFormatEnumerator.wszEnumFORMATETC = internal global [16 x i8] c"_EnumFORMATETC_\00", align 16
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CreateFormatEnumerator failed: %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"RegisterFormatEnumerator failed: %08x, expected E_INVALIDARG\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"RegisterFormatEnumerator failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"GetObjectParam failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unk != format\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"RevokeFormatEnumerator failed: %08x, expected E_INVALIDARG\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"RevokeFormatEnumerator failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"RevokeFormatEnumerator failed: %08x, expected E_FAIL\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"GetObjectParam failed: %08x, expected E_FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RegisterFormatEnumerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RegisterFormatEnumerator() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = call i32 @CreateBindCtx(i32 0, i32** %1)
  %7 = call i64 @CreateFormatEnumerator(i32 1, %struct.TYPE_3__* @test_RegisterFormatEnumerator.formatetc, i32** %2)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %162

18:                                               ; preds = %0
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @RegisterFormatEnumerator(i32* null, i32* %19, i32 0)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @E_INVALIDARG, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i64 @RegisterFormatEnumerator(i32* %27, i32* null, i32 0)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @E_INVALIDARG, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @RegisterFormatEnumerator(i32* %35, i32* %36, i32 0)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i64 @IBindCtx_GetObjectParam(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_RegisterFormatEnumerator.wszEnumFORMATETC, i64 0, i64 0), i32** %4)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %5, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = icmp eq i32* %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = call i64 @RevokeFormatEnumerator(i32* null, i32* %57)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @E_INVALIDARG, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call i64 @RevokeFormatEnumerator(i32* %65, i32* %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %5, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i64 @RevokeFormatEnumerator(i32* %74, i32* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @E_FAIL, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %5, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @IBindCtx_GetObjectParam(i32* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_RegisterFormatEnumerator.wszEnumFORMATETC, i64 0, i64 0), i32** %4)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @E_FAIL, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %5, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32*, i32** %2, align 8
  %93 = call i64 @RegisterFormatEnumerator(i32* %91, i32* %92, i32 0)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %5, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = call i64 @CreateFormatEnumerator(i32 1, %struct.TYPE_3__* @test_RegisterFormatEnumerator.formatetc, i32** %3)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %5, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @SUCCEEDED(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %18
  %111 = load i32*, i32** %1, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = call i64 @RevokeFormatEnumerator(i32* %111, i32* %112)
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %5, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @IEnumFORMATETC_Release(i32* %120)
  br label %122

122:                                              ; preds = %110, %18
  %123 = load i32*, i32** %1, align 8
  %124 = call i64 @IBindCtx_GetObjectParam(i32* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_RegisterFormatEnumerator.wszEnumFORMATETC, i64 0, i64 0), i32** %4)
  store i64 %124, i64* %5, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @E_FAIL, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %5, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @IEnumFORMATETC_Release(i32* %131)
  %133 = load i32*, i32** %1, align 8
  %134 = load i32*, i32** %2, align 8
  %135 = call i64 @RegisterFormatEnumerator(i32* %133, i32* %134, i32 0)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @S_OK, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %5, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %1, align 8
  %143 = call i64 @RevokeFormatEnumerator(i32* %142, i32* null)
  store i64 %143, i64* %5, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @S_OK, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %5, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i64 @IBindCtx_GetObjectParam(i32* %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_RegisterFormatEnumerator.wszEnumFORMATETC, i64 0, i64 0), i32** %4)
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* @E_FAIL, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %5, align 8
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %2, align 8
  %159 = call i32 @IEnumFORMATETC_Release(i32* %158)
  %160 = load i32*, i32** %1, align 8
  %161 = call i32 @IBindCtx_Release(i32* %160)
  br label %162

162:                                              ; preds = %122, %17
  ret void
}

declare dso_local i32 @CreateBindCtx(i32, i32**) #1

declare dso_local i64 @CreateFormatEnumerator(i32, %struct.TYPE_3__*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @RegisterFormatEnumerator(i32*, i32*, i32) #1

declare dso_local i64 @IBindCtx_GetObjectParam(i32*, i8*, i32**) #1

declare dso_local i64 @RevokeFormatEnumerator(i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IEnumFORMATETC_Release(i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
