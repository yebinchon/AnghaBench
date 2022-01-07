; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_diff_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_diff_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.diffarg = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8
@DNODE_SHIFT = common dso_local global i32 0, align 4
@ARC_FLAG_WAIT = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@arc_getbuf_func = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DNODE_BLOCK_SHIFT = common dso_local global i32 0, align 4
@TRAVERSE_VISIT_NO_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*)* @diff_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_cb(i32* %0, i32* %1, i32* %2, %struct.TYPE_12__* %3, %struct.TYPE_13__* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.diffarg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store i8* %5, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = bitcast i8* %25 to %struct.diffarg*
  store %struct.diffarg* %26, %struct.diffarg** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @JUSTLOOKING, align 4
  %28 = call i64 @issig(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i32, i32* @FORREAL, align 4
  %32 = call i64 @issig(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINTR, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %164

37:                                               ; preds = %30, %6
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  store i32 0, i32* %7, align 4
  br label %164

50:                                               ; preds = %43
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @BP_IS_HOLE(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @DBP_SPAN(%struct.TYPE_13__* %55, i64 %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* @DNODE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load %struct.diffarg*, %struct.diffarg** %14, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @DNODE_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @report_free_dnode_range(%struct.diffarg* %67, i32 %68, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %54
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %164

80:                                               ; preds = %54
  br label %163

81:                                               ; preds = %50
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %162

86:                                               ; preds = %81
  %87 = load i32, i32* @ARC_FLAG_WAIT, align 4
  store i32 %87, i32* %20, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @BP_GET_LSIZE(i32* %88)
  %90 = load i32, i32* @DNODE_SHIFT, align 4
  %91 = ashr i32 %89, %90
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  store i32 %92, i32* %22, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @BP_IS_PROTECTED(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %98 = load i32, i32* %22, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %22, align 4
  br label %100

100:                                              ; preds = %96, %86
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* @arc_getbuf_func, align 4
  %104 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %107 = call i64 @arc_read(i32* null, i32* %101, i32* %102, i32 %103, %struct.TYPE_14__** %19, i32 %104, i32 %105, i32* %20, %struct.TYPE_12__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* @EIO, align 4
  %111 = call i32 @SET_ERROR(i32 %110)
  store i32 %111, i32* %7, align 4
  br label %164

112:                                              ; preds = %100
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %18, align 8
  store i32 0, i32* %23, align 4
  br label %116

116:                                              ; preds = %141, %112
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @DNODE_BLOCK_SHIFT, align 4
  %125 = load i32, i32* @DNODE_SHIFT, align 4
  %126 = sub nsw i32 %124, %125
  %127 = shl i32 %123, %126
  %128 = load i32, i32* %23, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %24, align 4
  %130 = load %struct.diffarg*, %struct.diffarg** %14, align 8
  %131 = load i32, i32* %24, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = call i32 @report_dnode(%struct.diffarg* %130, i32 %131, %struct.TYPE_13__* %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %120
  br label %153

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %23, align 4
  br label %116

153:                                              ; preds = %139, %116
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %155 = call i32 @arc_buf_destroy(%struct.TYPE_14__* %154, %struct.TYPE_14__** %19)
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %7, align 4
  br label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @TRAVERSE_VISIT_NO_CHILDREN, align 4
  store i32 %161, i32* %7, align 4
  br label %164

162:                                              ; preds = %81
  br label %163

163:                                              ; preds = %162, %80
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %160, %158, %109, %78, %49, %34
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i32 @DBP_SPAN(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @report_free_dnode_range(%struct.diffarg*, i32, i32) #1

declare dso_local i32 @BP_GET_LSIZE(i32*) #1

declare dso_local i64 @BP_IS_PROTECTED(i32*) #1

declare dso_local i64 @arc_read(i32*, i32*, i32*, i32, %struct.TYPE_14__**, i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @report_dnode(%struct.diffarg*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @arc_buf_destroy(%struct.TYPE_14__*, %struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
