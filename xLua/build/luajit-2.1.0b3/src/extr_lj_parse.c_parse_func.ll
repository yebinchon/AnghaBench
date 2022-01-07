; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_func.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @parse_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_func(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @lj_lex_next(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @var_lookup(%struct.TYPE_11__* %11, i32* %6)
  br label %13

13:                                               ; preds = %19, %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @expr_field(%struct.TYPE_11__* %20, i32* %6)
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 58
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @expr_field(%struct.TYPE_11__* %29, i32* %6)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @parse_body(%struct.TYPE_11__* %32, i32* %7, i32 %33, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i32 @bcemit_store(%struct.TYPE_12__* %39, i32* %6, i32* %7)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %41, i32* %51, align 4
  ret void
}

declare dso_local i32 @lj_lex_next(%struct.TYPE_11__*) #1

declare dso_local i32 @var_lookup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @expr_field(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @parse_body(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @bcemit_store(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
