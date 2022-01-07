; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_forlist.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lparser.c_forlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@TK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @forlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forlist(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  store i32 4, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = call i32 @new_localvarliteral(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = call i32 @new_localvarliteral(%struct.TYPE_13__* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = call i32 @new_localvarliteral(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @new_localvar(%struct.TYPE_13__* %22, i32* %23)
  br label %25

25:                                               ; preds = %29, %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = call i64 @testnext(%struct.TYPE_13__* %26, i8 signext 44)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32* @str_checkname(%struct.TYPE_13__* %31)
  %33 = call i32 @new_localvar(%struct.TYPE_13__* %30, i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load i32, i32* @TK_IN, align 4
  %39 = call i32 @checknext(%struct.TYPE_13__* %37, i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i32 @explist(%struct.TYPE_13__* %44, i32* %6)
  %46 = call i32 @adjust_assign(%struct.TYPE_13__* %43, i32 3, i32 %45, i32* %6)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @luaK_checkstack(%struct.TYPE_14__* %47, i32 3)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 3
  %54 = call i32 @forbody(%struct.TYPE_13__* %49, i32 %50, i32 %51, i32 %53, i32 0)
  ret void
}

declare dso_local i32 @new_localvarliteral(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @new_localvar(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @testnext(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32* @str_checkname(%struct.TYPE_13__*) #1

declare dso_local i32 @checknext(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @adjust_assign(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @explist(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @luaK_checkstack(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @forbody(%struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
