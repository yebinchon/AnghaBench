; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_setreturns.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_setreturns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@VCALL = common dso_local global i64 0, align 8
@VVARARG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_setreturns(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VCALL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i32 @getcode(%struct.TYPE_9__* %13, %struct.TYPE_8__* %14)
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @SETARG_C(i32 %15, i32 %17)
  br label %42

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VVARARG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @getcode(%struct.TYPE_9__* %26, %struct.TYPE_8__* %27)
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @SETARG_B(i32 %28, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = call i32 @getcode(%struct.TYPE_9__* %32, %struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SETARG_A(i32 %34, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @luaK_reserveregs(%struct.TYPE_9__* %39, i32 1)
  br label %41

41:                                               ; preds = %25, %19
  br label %42

42:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @SETARG_C(i32, i32) #1

declare dso_local i32 @getcode(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

declare dso_local i32 @SETARG_A(i32, i32) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
