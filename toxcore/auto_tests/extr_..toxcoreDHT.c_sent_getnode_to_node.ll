; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_sent_getnode_to_node.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_sent_getnode_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, %struct.TYPE_7__*)* @sent_getnode_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sent_getnode_to_node(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @ping_array_check(i32* %14, i32 64, i32* %16, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = call i32 @memset(%struct.TYPE_7__* %22, i32 0, i32 8)
  br label %39

24:                                               ; preds = %5
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ping_array_check(i32* %25, i32 64, i32* %27, i32 %28)
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %30, 64
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = call i32 @memcpy(%struct.TYPE_7__* %33, i32* %35, i32 8)
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %53

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %21
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %41 = call i32 @memcpy(%struct.TYPE_7__* %13, i32* %40, i32 8)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %43 = call i32 @ipport_equal(i32* %42, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @public_key_cmp(i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  store i32 0, i32* %6, align 4
  br label %53

52:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %51, %37
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @ping_array_check(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ipport_equal(i32*, i32*) #1

declare dso_local i64 @public_key_cmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
