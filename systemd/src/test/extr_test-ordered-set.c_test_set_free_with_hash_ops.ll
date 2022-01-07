; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-ordered-set.c_test_set_free_with_hash_ops.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-ordered-set.c_test_set_free_with_hash_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Item = type { i32 }

@item_hash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_free_with_hash_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_free_with_hash_ops() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [4 x %struct.Item], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [4 x %struct.Item]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = call i32* @ordered_set_new(i32* @item_hash_ops)
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
  %20 = call i32 @ordered_set_put(i32* %15, %struct.Item* %19)
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
  %29 = call i32* @ordered_set_free(i32* %28)
  store i32* %29, i32** %1, align 8
  %30 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.Item, %struct.Item* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 1
  %37 = getelementptr inbounds %struct.Item, %struct.Item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 2
  %43 = getelementptr inbounds %struct.Item, %struct.Item* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = getelementptr inbounds [4 x %struct.Item], [4 x %struct.Item]* %2, i64 0, i64 3
  %49 = getelementptr inbounds %struct.Item, %struct.Item* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32* @ordered_set_new(i32*) #2

declare dso_local i32 @ELEMENTSOF(%struct.Item*) #2

declare dso_local i32 @ordered_set_put(i32*, %struct.Item*) #2

declare dso_local i32* @ordered_set_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
