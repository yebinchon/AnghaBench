; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_lj_bcread.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_lj_bcread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64*, i64*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@BCDUMP_HEAD1 = common dso_local global i64 0, align 8
@LJ_ERR_BCFMT = common dso_local global i32 0, align 4
@LJ_ERR_BCBAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_bcread(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BCDUMP_HEAD1, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bcread_savetop(%struct.TYPE_16__* %17, %struct.TYPE_17__* %18, i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = call i32 @lj_buf_reset(i32* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = call i32 @bcread_header(%struct.TYPE_17__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = load i32, i32* @LJ_ERR_BCFMT, align 4
  %32 = call i32 @bcread_error(%struct.TYPE_17__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %1
  br label %34

34:                                               ; preds = %85, %33
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ult i64* %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %51, align 8
  br label %94

54:                                               ; preds = %42, %34
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = call i32 @bcread_want(%struct.TYPE_17__* %55, i32 5)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %58 = call i32 @bcread_uleb128(%struct.TYPE_17__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %94

62:                                               ; preds = %54
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @bcread_need(%struct.TYPE_17__* %63, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = bitcast i64* %68 to i8*
  store i8* %69, i8** %6, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = call i32* @lj_bcread_proto(%struct.TYPE_17__* %70)
  store i32* %71, i32** %4, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = bitcast i8* %78 to i64*
  %80 = icmp ne i64* %74, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = load i32, i32* @LJ_ERR_BCBAD, align 4
  %84 = call i32 @bcread_error(%struct.TYPE_17__* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %62
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @setprotoV(%struct.TYPE_16__* %86, i32 %89, i32* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = call i32 @incr_top(%struct.TYPE_16__* %92)
  br label %34

94:                                               ; preds = %61, %49
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = ptrtoint i64* %97 to i64
  %102 = ptrtoint i64* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %94
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = call i32 @bcread_oldtop(%struct.TYPE_16__* %114, %struct.TYPE_17__* %115)
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %109, %94
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = load i32, i32* @LJ_ERR_BCBAD, align 4
  %121 = call i32 @bcread_error(%struct.TYPE_17__* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %109
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32* @protoV(i32 %129)
  ret i32* %130
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @bcread_savetop(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @lj_buf_reset(i32*) #1

declare dso_local i32 @bcread_header(%struct.TYPE_17__*) #1

declare dso_local i32 @bcread_error(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bcread_want(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bcread_uleb128(%struct.TYPE_17__*) #1

declare dso_local i32 @bcread_need(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @lj_bcread_proto(%struct.TYPE_17__*) #1

declare dso_local i32 @setprotoV(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @incr_top(%struct.TYPE_16__*) #1

declare dso_local i32 @bcread_oldtop(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32* @protoV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
