; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lundump.c_LoadString.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lundump.c_LoadString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@LUAI_MAXSHORTLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @LoadString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LoadString(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i8* @LoadByte(%struct.TYPE_6__* %8)
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 255
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @LoadVar(%struct.TYPE_6__* %14, i64 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %51

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %5, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @LoadVector(%struct.TYPE_6__* %30, i8* %29, i64 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32* @luaS_newlstr(i32 %35, i8* %29, i64 %36)
  store i32* %37, i32** %2, align 8
  %38 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %38)
  br label %51

39:                                               ; preds = %21
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32* @luaS_createlngstrobj(i32 %42, i64 %43)
  store i32* %44, i32** %7, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @getstr(i32* %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @LoadVector(%struct.TYPE_6__* %45, i8* %47, i64 %48)
  %50 = load i32*, i32** %7, align 8
  store i32* %50, i32** %2, align 8
  br label %51

51:                                               ; preds = %39, %26, %20
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i8* @LoadByte(%struct.TYPE_6__*) #1

declare dso_local i32 @LoadVar(%struct.TYPE_6__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadVector(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32* @luaS_newlstr(i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @luaS_createlngstrobj(i32, i64) #1

declare dso_local i8* @getstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
