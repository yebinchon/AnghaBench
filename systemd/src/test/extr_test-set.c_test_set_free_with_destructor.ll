; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-set.c_test_set_free_with_destructor.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-set.c_test_set_free_with_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Item = type { i32 }

@item_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_free_with_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_free_with_destructor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [4 x %struct.Item], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [4 x %struct.Item]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = call i32* @set_new(i32* null)
  store i32* %5, i32** %1, align 8
  %6 = ptrtoint i32* %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %0
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 0
  %11 = call i32 @ELEMENTSOF(%struct.Item* %10)
  %12 = sub nsw i32 %11, 1
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32*, i32** %1, align 8
  %16 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Item, %struct.Item* %16, i64 %18
  %20 = call i32 @set_put(i32* %15, %struct.Item* %19)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @item_seen, align 4
  %30 = call i32* @set_free_with_destructor(i32* %28, i32 %29)
  store i32* %30, i32** %1, align 8
  %31 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 0
  %32 = getelementptr inbounds %struct.Item, %struct.Item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 1
  %38 = getelementptr inbounds %struct.Item, %struct.Item* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 2
  %44 = getelementptr inbounds %struct.Item, %struct.Item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 3
  %50 = getelementptr inbounds %struct.Item, %struct.Item* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32* @set_new(i32*) #2

declare dso_local i32 @ELEMENTSOF(%struct.Item*) #2

declare dso_local i32 @set_put(i32*, %struct.Item*) #2

declare dso_local i32* @set_free_with_destructor(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
