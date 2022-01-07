; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_deleg_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_deleg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_deleg_destroy(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @zap_cursor_init(i32* %8, i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %40, %13
  %18 = call i64 @zap_cursor_retrieve(i32* %8, %struct.TYPE_3__* %9)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @zap_destroy(i32* %32, i32 %34, i32* %35)
  %37 = icmp eq i64 0, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @VERIFY(i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = call i32 @zap_cursor_advance(i32* %8)
  br label %17

42:                                               ; preds = %17
  %43 = call i32 @zap_cursor_fini(i32* %8)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @zap_destroy(i32* %44, i32 %45, i32* %46)
  %48 = icmp eq i64 0, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @VERIFY(i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %42, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_destroy(i32*, i32, i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
