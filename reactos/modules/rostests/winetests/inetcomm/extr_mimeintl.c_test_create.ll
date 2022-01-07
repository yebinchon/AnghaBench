; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i64 @MimeOleGetInternat(i32** %1)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i64 @MimeOleGetInternat(i32** %2)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %0
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @IMimeInternational_Release(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ true, %24 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @IMimeInternational_Release(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %59

44:                                               ; preds = %0
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @IMimeInternational_Release(i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @IMimeInternational_Release(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %44, %32
  ret void
}

declare dso_local i64 @MimeOleGetInternat(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IMimeInternational_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
