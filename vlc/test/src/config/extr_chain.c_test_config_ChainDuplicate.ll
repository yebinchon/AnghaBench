; ModuleID = '/home/carl/AnghaBench/vlc/test/src/config/extr_chain.c_test_config_ChainDuplicate.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/config/extr_chain.c_test_config_ChainDuplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppsz_string = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_config_ChainDuplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_ChainDuplicate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i64*, i64** @ppsz_string, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load i64*, i64** @ppsz_string, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @config_ChainCreate(i8** %2, i32** %3, i64 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @config_ChainDuplicate(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @check_config_equality(i32* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @config_ChainDestroy(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @config_ChainDestroy(i32* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i8* @config_ChainCreate(i8**, i32**, i64) #1

declare dso_local i32* @config_ChainDuplicate(i32*) #1

declare dso_local i32 @check_config_equality(i32*, i32*) #1

declare dso_local i32 @config_ChainDestroy(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
