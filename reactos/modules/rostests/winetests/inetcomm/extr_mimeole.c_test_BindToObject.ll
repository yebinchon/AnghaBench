; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_BindToObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_BindToObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@HBODY_ROOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@IID_IMimeBody = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BindToObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BindToObject() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @MimeOleCreateMessage(i32* null, i32** %2)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @S_OK, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @HBODY_ROOT, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @IMimeMessage_CountBodies(i32* %12, i32 %13, i32 %14, i32* %4)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @HBODY_ROOT, align 4
  %29 = bitcast i32** %3 to i8**
  %30 = call i32 @IMimeMessage_BindToObject(i32* %27, i32 %28, i32* @IID_IMimeBody, i8** %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @IMimeBody_Release(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @IMimeMessage_Release(i32* %39)
  ret void
}

declare dso_local i32 @MimeOleCreateMessage(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IMimeMessage_CountBodies(i32*, i32, i32, i32*) #1

declare dso_local i32 @IMimeMessage_BindToObject(i32*, i32, i32*, i8**) #1

declare dso_local i32 @IMimeBody_Release(i32*) #1

declare dso_local i32 @IMimeMessage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
