; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_snprintf_blkptr_compact.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_snprintf_blkptr_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EMBEDDED et=%u %llxL/%llxP B=%llu\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%llu:%llx:%llx \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%llxL B=%llu\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%llxL/%llxP F=%llu B=%llu/%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_14__*, i64)* @snprintf_blkptr_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snprintf_blkptr_compact(i8* %0, i64 %1, %struct.TYPE_14__* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** @dump_opt, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 100
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = call i32 @BP_GET_NDVAS(%struct.TYPE_14__* %20)
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 1, %22 ]
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @dump_opt, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 98
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 6
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = call i32 @snprintf_blkptr(i8* %30, i64 %31, %struct.TYPE_14__* %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i64, i64* %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = sub i64 %42, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %36, %29
  br label %186

50:                                               ; preds = %23
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = call i64 @BP_IS_EMBEDDED(%struct.TYPE_14__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = call i64 @BPE_GET_ETYPE(%struct.TYPE_14__* %56)
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = call i64 @BPE_GET_LSIZE(%struct.TYPE_14__* %59)
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = call i64 @BPE_GET_PSIZE(%struct.TYPE_14__* %62)
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %68)
  br label %186

70:                                               ; preds = %50
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 0, i8* %72, align 1
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %110, %70
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i64, i64* %6, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = sub i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i64 @DVA_GET_VDEV(i32* %92)
  %94 = trunc i64 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i64 @DVA_GET_OFFSET(i32* %100)
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i64 @DVA_GET_ASIZE(i32* %106)
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %82, i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 %102, i32 %108)
  br label %110

110:                                              ; preds = %77
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %73

113:                                              ; preds = %73
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = call i64 @BP_IS_HOLE(%struct.TYPE_14__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i64, i64* %6, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = sext i32 %125 to i64
  %127 = sub i64 %123, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = call i64 @BP_GET_LSIZE(%struct.TYPE_14__* %129)
  %131 = trunc i64 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %122, i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %133, i32 %137)
  br label %186

139:                                              ; preds = %113
  %140 = load i8*, i8** %5, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i64, i64* %6, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = sext i32 %147 to i64
  %149 = sub i64 %145, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = call i64 @BP_GET_LSIZE(%struct.TYPE_14__* %151)
  %153 = trunc i64 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = call i64 @BP_GET_PSIZE(%struct.TYPE_14__* %156)
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = call i64 @BP_GET_FILL(%struct.TYPE_14__* %159)
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %167 = call i64 @BP_PHYSICAL_BIRTH(%struct.TYPE_14__* %166)
  %168 = trunc i64 %167 to i32
  %169 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %144, i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %155, i32 %158, i32 %161, i32 %165, i32 %168)
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %139
  %173 = load i8*, i8** %5, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i64, i64* %6, align 8
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = sext i32 %180 to i64
  %182 = sub i64 %178, %181
  %183 = trunc i64 %182 to i32
  %184 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %177, i32 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %172, %139
  br label %186

186:                                              ; preds = %49, %54, %185, %117
  ret void
}

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_14__*) #1

declare dso_local i32 @snprintf_blkptr(i8*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @BP_IS_EMBEDDED(%struct.TYPE_14__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @BPE_GET_ETYPE(%struct.TYPE_14__*) #1

declare dso_local i64 @BPE_GET_LSIZE(%struct.TYPE_14__*) #1

declare dso_local i64 @BPE_GET_PSIZE(%struct.TYPE_14__*) #1

declare dso_local i64 @DVA_GET_VDEV(i32*) #1

declare dso_local i64 @DVA_GET_OFFSET(i32*) #1

declare dso_local i64 @DVA_GET_ASIZE(i32*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_14__*) #1

declare dso_local i64 @BP_GET_LSIZE(%struct.TYPE_14__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_14__*) #1

declare dso_local i64 @BP_GET_FILL(%struct.TYPE_14__*) #1

declare dso_local i64 @BP_PHYSICAL_BIRTH(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
