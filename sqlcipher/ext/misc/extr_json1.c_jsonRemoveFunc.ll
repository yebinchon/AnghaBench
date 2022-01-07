; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonRemoveFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonRemoveFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@JNODE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonRemoveFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonRemoveFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %81

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @sqlite3_value_text(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = call i64 @jsonParse(%struct.TYPE_8__* %7, i32* %15, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %81

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @assert(i32 %26)
  store i64 1, i64* %10, align 8
  br label %28

28:                                               ; preds = %61, %24
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load i32**, i32*** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sqlite3_value_text(i32* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %79

43:                                               ; preds = %33
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_9__* @jsonLookup(%struct.TYPE_8__* %7, i8* %44, i32 0, i32* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %79

51:                                               ; preds = %43
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @JNODE_REMOVE, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %28

64:                                               ; preds = %28
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @JNODE_REMOVE, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @jsonReturnJson(%struct.TYPE_10__* %75, i32* %76, i32 0)
  br label %78

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %50, %42
  %80 = call i32 @jsonParseReset(%struct.TYPE_8__* %7)
  br label %81

81:                                               ; preds = %79, %23, %13
  ret void
}

declare dso_local i64 @jsonParse(%struct.TYPE_8__*, i32*, i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @jsonLookup(%struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @jsonReturnJson(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @jsonParseReset(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
