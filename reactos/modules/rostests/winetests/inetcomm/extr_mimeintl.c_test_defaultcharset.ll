; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_defaultcharset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_defaultcharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@CHARSET_BODY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected default charset\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"windows-1251\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"didn't retrieve recently set default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_defaultcharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_defaultcharset() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i64 @MimeOleGetInternat(i32** %1)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %2, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @IMimeInternational_GetDefaultCharset(i32* %13, i64* %3)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %2, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 (...) @GetACP()
  %23 = load i32, i32* @CHARSET_BODY, align 4
  %24 = call i64 @IMimeInternational_GetCodePageCharset(i32* %21, i32 %22, i32 %23, i64* %4)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @IMimeInternational_FindCharset(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64* %5)
  store i64 %37, i64* %2, align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %2, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @IMimeInternational_SetDefaultCharset(i32* %44, i64 %45)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %2, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @IMimeInternational_GetDefaultCharset(i32* %53, i64* %4)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %2, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32*, i32** %1, align 8
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @IMimeInternational_SetDefaultCharset(i32* %66, i64 %67)
  store i64 %68, i64* %2, align 8
  %69 = load i64, i64* %2, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %2, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IMimeInternational_Release(i32* %75)
  ret void
}

declare dso_local i64 @MimeOleGetInternat(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IMimeInternational_GetDefaultCharset(i32*, i64*) #1

declare dso_local i64 @IMimeInternational_GetCodePageCharset(i32*, i32, i32, i64*) #1

declare dso_local i32 @GetACP(...) #1

declare dso_local i64 @IMimeInternational_FindCharset(i32*, i8*, i64*) #1

declare dso_local i64 @IMimeInternational_SetDefaultCharset(i32*, i64) #1

declare dso_local i32 @IMimeInternational_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
