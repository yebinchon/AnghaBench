; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_unlink.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@_FS_RPATH = common dso_local global i64 0, align 8
@NSFLAG = common dso_local global i64 0, align 8
@NS_DOT = common dso_local global i32 0, align 4
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@AM_RDO = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@AM_DIR = common dso_local global i32 0, align 4
@FR_NO_FILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_unlink(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %11 = call i64 @find_volume(%struct.TYPE_16__** %10, i32** %3, i32 1)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @FR_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %130

15:                                               ; preds = %1
  %16 = call i32 @INIT_BUF(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %5)
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @follow_path(%struct.TYPE_15__* %5, i32* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @_FS_RPATH, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @FR_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @NSFLAG, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NS_DOT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %25, %21, %15
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @FR_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %128

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %46, i64* %4, align 8
  br label %58

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @DIR_Attr, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AM_RDO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @FR_DENIED, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %47
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @FR_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @ld_clust(%struct.TYPE_16__* %64, i32* %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* @DIR_Attr, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AM_DIR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = call i32 @mem_cpy(%struct.TYPE_15__* %6, %struct.TYPE_15__* %5, i32 32)
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i64 %79, i64* %80, align 8
  %81 = call i64 @dir_sdi(%struct.TYPE_15__* %6, i32 2)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @FR_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = call i64 @dir_read(%struct.TYPE_15__* %6, i32 0)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @FR_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @FR_DENIED, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @FR_NO_FILE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @FR_OK, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99, %69, %62
  br label %101

101:                                              ; preds = %100, %58
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @FR_OK, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = call i64 @dir_remove(%struct.TYPE_15__* %5)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @FR_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i64 @remove_chain(%struct.TYPE_16__* %115, i64 %116)
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %113, %110, %105
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* @FR_OK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = call i64 @sync_fs(%struct.TYPE_16__* %124)
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127, %36
  %129 = call i32 (...) @FREE_BUF()
  br label %130

130:                                              ; preds = %128, %1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call i32 @LEAVE_FF(%struct.TYPE_16__* %132, i64 %133)
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i64 @find_volume(%struct.TYPE_16__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i64 @follow_path(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @ld_clust(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @mem_cpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @dir_read(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @dir_remove(%struct.TYPE_15__*) #1

declare dso_local i64 @remove_chain(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @sync_fs(%struct.TYPE_16__*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
