; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_anchor_token.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_anchor_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@TK_EOS = common dso_local global i64 0, align 8
@TK_NAME = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @anchor_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anchor_token(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TK_EOS, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i1 [ true, %1 ], [ %14, %8 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @lua_assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TK_NAME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TK_STRING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %25, %15
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %3, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = call i32 @getstr(%struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @luaX_newstring(%struct.TYPE_13__* %38, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaX_newstring(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @getstr(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
