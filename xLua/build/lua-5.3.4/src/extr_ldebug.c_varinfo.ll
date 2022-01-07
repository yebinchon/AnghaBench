; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldebug.c_varinfo.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldebug.c_varinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c" (%s '%s')\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*)* @varinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @varinfo(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = call i64 @isLua(%struct.TYPE_17__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @getupvalname(%struct.TYPE_17__* %15, i32* %16, i8** %5)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @isinstack(%struct.TYPE_17__* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = call %struct.TYPE_13__* @ci_func(%struct.TYPE_17__* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = call i32 @currentpc(%struct.TYPE_17__* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = call i32 @cast_int(i32* %40)
  %42 = call i8* @getobjname(i32 %29, i32 %31, i32 %41, i8** %5)
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %25, %20, %14
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @luaO_pushfstring(%struct.TYPE_16__* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i8* [ %51, %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %52 ]
  ret i8* %54
}

declare dso_local i64 @isLua(%struct.TYPE_17__*) #1

declare dso_local i8* @getupvalname(%struct.TYPE_17__*, i32*, i8**) #1

declare dso_local i64 @isinstack(%struct.TYPE_17__*, i32*) #1

declare dso_local i8* @getobjname(i32, i32, i32, i8**) #1

declare dso_local %struct.TYPE_13__* @ci_func(%struct.TYPE_17__*) #1

declare dso_local i32 @currentpc(%struct.TYPE_17__*) #1

declare dso_local i32 @cast_int(i32*) #1

declare dso_local i8* @luaO_pushfstring(%struct.TYPE_16__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
