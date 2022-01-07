; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_byteswap.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_byteswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64, i64)* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i64, i32, i32, i64, i32, i8*, i8*, i32 }

@DMU_OT_NONE = common dso_local global i64 0, align 8
@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8
@DN_MAX_NBLKPTR = common dso_local global i32 0, align 4
@dmu_ot_byteswap = common dso_local global %struct.TYPE_7__* null, align 8
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnode_byteswap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 11
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to i8**
  store i8** %12, i8*** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMU_OT_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = call i32 @bzero(%struct.TYPE_6__* %19, i32 88)
  br label %147

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @BSWAP_16(i64 %24)
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @BSWAP_16(i64 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @BSWAP_8(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @BSWAP_64(i8* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 10
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 9
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @BSWAP_64(i8* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %58 = icmp sle i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DN_MAX_NBLKPTR, align 4
  %65 = icmp sle i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %89, %21
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = udiv i64 %75, 8
  %77 = icmp ult i64 %70, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = load i8**, i8*** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @BSWAP_64(i8* %83)
  %85 = load i8**, i8*** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %84, i8** %88, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %68

92:                                               ; preds = %68
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @DN_SLOTS_TO_BONUSLEN(i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %7, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @DMU_OT_IS_VALID(i32 %116)
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @DMU_OT_BYTESWAP(i32 %121)
  store i64 %122, i64* %8, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dmu_ot_byteswap, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32 (i64, i64)*, i32 (i64, i64)** %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load i64, i64* %7, align 8
  %135 = call i32 %127(i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %97, %92
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = call i32 @DN_SPILL_BLKPTR(%struct.TYPE_6__* %144)
  %146 = call i32 @byteswap_uint64_array(i32 %145, i32 4)
  br label %147

147:                                              ; preds = %18, %143, %136
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @BSWAP_16(i64) #1

declare dso_local i32 @BSWAP_8(i32) #1

declare dso_local i8* @BSWAP_64(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DN_SLOTS_TO_BONUSLEN(i32) #1

declare dso_local i32 @DMU_OT_IS_VALID(i32) #1

declare dso_local i64 @DMU_OT_BYTESWAP(i32) #1

declare dso_local i32 @byteswap_uint64_array(i32, i32) #1

declare dso_local i32 @DN_SPILL_BLKPTR(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
