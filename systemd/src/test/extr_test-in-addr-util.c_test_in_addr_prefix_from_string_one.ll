; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-in-addr-util.c_test_in_addr_prefix_from_string_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-in-addr-util.c_test_in_addr_prefix_from_string_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@PREFIXLEN_REFUSE = common dso_local global i32 0, align 4
@PREFIXLEN_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %union.in_addr_union*, i8, i32, i8, i32, i8)* @test_in_addr_prefix_from_string_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_in_addr_prefix_from_string_one(i8* %0, i32 %1, i32 %2, %union.in_addr_union* %3, i8 zeroext %4, i32 %5, i8 zeroext %6, i32 %7, i8 zeroext %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.in_addr_union*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %union.in_addr_union, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %union.in_addr_union* %3, %union.in_addr_union** %13, align 8
  store i8 %4, i8* %14, align 1
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i32 %7, i32* %17, align 4
  store i8 %8, i8* %18, align 1
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @in_addr_prefix_from_string(i8* %23, i32 %24, %union.in_addr_union* %19, i8* %20)
  store i32 %25, i32* %22, align 4
  %26 = load i32, i32* %22, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* %22, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %9
  br label %123

34:                                               ; preds = %9
  %35 = load i32, i32* %11, align 4
  %36 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %37 = call i32 @in_addr_equal(i32 %35, %union.in_addr_union* %19, %union.in_addr_union* %36)
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i8, i8* %20, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %14, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert_se(i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @in_addr_prefix_from_string_auto(i8* %46, i32* %21, %union.in_addr_union* %19, i8* %20)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_se(i32 %50)
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %59 = call i32 @in_addr_equal(i32 %57, %union.in_addr_union* %19, %union.in_addr_union* %58)
  %60 = call i32 @assert_se(i32 %59)
  %61 = load i8, i8* %20, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %14, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @PREFIXLEN_REFUSE, align 4
  %70 = call i32 @in_addr_prefix_from_string_auto_internal(i8* %68, i32 %69, i32* %21, %union.in_addr_union* %19, i8* %20)
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert_se(i32 %74)
  %76 = load i32, i32* %22, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %34
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %86 = call i32 @in_addr_equal(i32 %84, %union.in_addr_union* %19, %union.in_addr_union* %85)
  %87 = call i32 @assert_se(i32 %86)
  %88 = load i8, i8* %20, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* %16, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert_se(i32 %93)
  br label %95

95:                                               ; preds = %78, %34
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* @PREFIXLEN_LEGACY, align 4
  %98 = call i32 @in_addr_prefix_from_string_auto_internal(i8* %96, i32 %97, i32* %21, %union.in_addr_union* %19, i8* %20)
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  %104 = load i32, i32* %22, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %95
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert_se(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %114 = call i32 @in_addr_equal(i32 %112, %union.in_addr_union* %19, %union.in_addr_union* %113)
  %115 = call i32 @assert_se(i32 %114)
  %116 = load i8, i8* %20, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %18, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert_se(i32 %121)
  br label %123

123:                                              ; preds = %33, %106, %95
  ret void
}

declare dso_local i32 @in_addr_prefix_from_string(i8*, i32, %union.in_addr_union*, i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @in_addr_equal(i32, %union.in_addr_union*, %union.in_addr_union*) #1

declare dso_local i32 @in_addr_prefix_from_string_auto(i8*, i32*, %union.in_addr_union*, i8*) #1

declare dso_local i32 @in_addr_prefix_from_string_auto_internal(i8*, i32, i32*, %union.in_addr_union*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
