; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_write.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }

@LUA_TSTRING = common dso_local global i32 0, align 4
@LJ_52 = common dso_local global i64 0, align 8
@GCROOT_IO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32)* @io_file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_file_write(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %8, align 8
  br label %18

18:                                               ; preds = %57, %3
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ult i32* %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i8* @lj_strfmt_wstrnum(%struct.TYPE_8__* %25, i32* %26, i64* %10)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %32 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @LUA_TSTRING, align 4
  %43 = call i32 @lj_err_argt(%struct.TYPE_8__* %31, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %30, %24
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @fwrite(i8* %48, i32 1, i64 %49, i32* %50)
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %47, %44
  %55 = phi i1 [ false, %44 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  br label %18

60:                                               ; preds = %18
  %61 = load i64, i64* @LJ_52, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = load i32, i32* @GCROOT_IO_OUTPUT, align 4
  %82 = call i32 @IOSTDF_UD(%struct.TYPE_8__* %80, i32 %81)
  %83 = call i32 @setudataV(%struct.TYPE_8__* %76, i32* %79, i32 %82)
  br label %84

84:                                               ; preds = %75, %66
  store i32 1, i32* %4, align 4
  br label %89

85:                                               ; preds = %63, %60
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @luaL_fileresult(%struct.TYPE_8__* %86, i32 %87, i32* null)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %84
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i8* @lj_strfmt_wstrnum(%struct.TYPE_8__*, i32*, i64*) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @setudataV(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @IOSTDF_UD(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @luaL_fileresult(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
