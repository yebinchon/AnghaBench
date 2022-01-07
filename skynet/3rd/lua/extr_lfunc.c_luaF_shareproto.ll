; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lfunc.c_luaF_shareproto.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lfunc.c_luaF_shareproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@LUA_TSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaF_shareproto(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = icmp eq %struct.TYPE_8__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %101

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @makeshared(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @luaS_share(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %40, %7
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i64 @ttnov(i32* %26)
  %28 = load i64, i64* @LUA_TSTRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @tsvalue(i32* %36)
  %38 = call i32 @luaS_share(i32 %37)
  br label %39

39:                                               ; preds = %30, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %14

43:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @luaS_share(i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %44

63:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @luaS_share(i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %64

83:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %93, i64 %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  call void @luaF_shareproto(%struct.TYPE_8__* %97)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %84

101:                                              ; preds = %6, %84
  ret void
}

declare dso_local i32 @makeshared(%struct.TYPE_8__*) #1

declare dso_local i32 @luaS_share(i32) #1

declare dso_local i64 @ttnov(i32*) #1

declare dso_local i32 @tsvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
