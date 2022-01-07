; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_substcap.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_substcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @substcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @substcap(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i64 @isfullcap(%struct.TYPE_8__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @luaL_addlstring(i32* %18, i8* %19, i32 %25)
  br label %81

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 1
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %29, align 8
  br label %32

32:                                               ; preds = %66, %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i32 @isclosecap(%struct.TYPE_8__* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @luaL_addlstring(i32* %45, i8* %46, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call i64 @addonestring(i32* %54, %struct.TYPE_7__* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %39
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 -1
  %63 = call i8* @closeaddr(%struct.TYPE_8__* %62)
  store i8* %63, i8** %5, align 8
  br label %66

64:                                               ; preds = %39
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %64, %58
  br label %32

67:                                               ; preds = %32
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @luaL_addlstring(i32* %68, i8* %69, i32 %79)
  br label %81

81:                                               ; preds = %67, %17
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 1
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %83, align 8
  ret void
}

declare dso_local i64 @isfullcap(%struct.TYPE_8__*) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @isclosecap(%struct.TYPE_8__*) #1

declare dso_local i64 @addonestring(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i8* @closeaddr(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
