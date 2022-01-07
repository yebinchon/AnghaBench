; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_fornum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_fornum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32)* @fornum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fornum(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call i32 @new_localvarliteral(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @new_localvarliteral(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i32 @new_localvarliteral(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @new_localvar(%struct.TYPE_13__* %21, i32* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32 @checknext(%struct.TYPE_13__* %24, i8 signext 61)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = call i32 @exp1(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @checknext(%struct.TYPE_13__* %28, i8 signext 44)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = call i32 @exp1(%struct.TYPE_13__* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call i64 @testnext(%struct.TYPE_13__* %32, i8 signext 44)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = call i32 @exp1(%struct.TYPE_13__* %36)
  br label %48

38:                                               ; preds = %3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = call i32 @luaK_intK(%struct.TYPE_14__* %43, i32 1)
  %45 = call i32 @luaK_codek(%struct.TYPE_14__* %39, i32 %42, i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = call i32 @luaK_reserveregs(%struct.TYPE_14__* %46, i32 1)
  br label %48

48:                                               ; preds = %38, %35
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @forbody(%struct.TYPE_13__* %49, i32 %50, i32 %51, i32 1, i32 1)
  ret void
}

declare dso_local i32 @new_localvarliteral(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @new_localvar(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @checknext(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @exp1(%struct.TYPE_13__*) #1

declare dso_local i64 @testnext(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @luaK_codek(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @luaK_intK(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @forbody(%struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
