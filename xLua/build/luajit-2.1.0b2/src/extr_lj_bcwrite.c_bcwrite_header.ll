; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_header.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 (i32, i8*, i64, i32)*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@BCDUMP_HEAD1 = common dso_local global i32 0, align 4
@BCDUMP_HEAD2 = common dso_local global i32 0, align 4
@BCDUMP_HEAD3 = common dso_local global i32 0, align 4
@BCDUMP_VERSION = common dso_local global i32 0, align 4
@BCDUMP_F_STRIP = common dso_local global i32 0, align 4
@LJ_BE = common dso_local global i32 0, align 4
@BCDUMP_F_BE = common dso_local global i32 0, align 4
@PROTO_FFI = common dso_local global i32 0, align 4
@BCDUMP_F_FFI = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@BCDUMP_F_FR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @bcwrite_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcwrite_header(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = call %struct.TYPE_7__* @proto_chunkname(%struct.TYPE_9__* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i8* @strdata(%struct.TYPE_7__* %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 10, %18
  %20 = call i8* @lj_buf_need(i32* %17, i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* @BCDUMP_HEAD1, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* @BCDUMP_HEAD2, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i32, i32* @BCDUMP_HEAD3, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i32, i32* @BCDUMP_VERSION, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 %34, i8* %35, align 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @BCDUMP_F_STRIP, align 4
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load i32, i32* @LJ_BE, align 4
  %47 = load i32, i32* @BCDUMP_F_BE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PROTO_FFI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @BCDUMP_F_FFI, align 4
  br label %61

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = add nsw i32 %49, %62
  %64 = load i32, i32* @LJ_FR2, align 4
  %65 = load i32, i32* @BCDUMP_F_FR2, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 %68, i8* %69, align 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %61
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i8* @lj_strfmt_wuleb128(i8* %76, i64 %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i8* @lj_buf_wmem(i8* %79, i8* %80, i64 %81)
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %75, %61
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = call i32 @sbufL(i32* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = call i8* @sbufB(i32* %91)
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = call i8* @sbufB(i32* %95)
  %97 = ptrtoint i8* %93 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %86(i32 %89, i8* %92, i64 %99, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @proto_chunkname(%struct.TYPE_9__*) #1

declare dso_local i8* @strdata(%struct.TYPE_7__*) #1

declare dso_local i8* @lj_buf_need(i32*, i64) #1

declare dso_local i8* @lj_strfmt_wuleb128(i8*, i64) #1

declare dso_local i8* @lj_buf_wmem(i8*, i8*, i64) #1

declare dso_local i32 @sbufL(i32*) #1

declare dso_local i8* @sbufB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
