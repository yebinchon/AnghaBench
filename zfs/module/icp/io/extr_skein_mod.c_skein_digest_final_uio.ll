; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest_final_uio.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_digest_final_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@UIO_SYSSPACE = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@Final = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @skein_digest_final_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skein_digest_final_uio(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UIO_SYSSPACE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %27, i32* %4, align 4
  br label %182

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %36, %43
  br label %45

45:                                               ; preds = %35, %29
  %46 = phi i1 [ false, %29 ], [ %44, %35 ]
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %29

59:                                               ; preds = %45
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %66, i32* %4, align 4
  br label %182

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @CRYPTO_BITS2BYTES(i32 %71)
  %73 = add i64 %68, %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ule i64 %73, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %67
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = load i32, i32* @Final, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @SKEIN_OP(%struct.TYPE_10__* %83, i32 %84, i32* %94)
  br label %180

96:                                               ; preds = %67
  store i64 0, i64* %12, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @CRYPTO_BITS2BYTES(i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @CRYPTO_BITS2BYTES(i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @crypto_kmflag(i32 %105)
  %107 = call i32* @kmem_alloc(i64 %104, i32 %106)
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %111, i32* %4, align 4
  br label %182

112:                                              ; preds = %96
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = load i32, i32* @Final, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @SKEIN_OP(%struct.TYPE_10__* %113, i32 %114, i32* %115)
  br label %117

117:                                              ; preds = %128, %112
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i64, i64* %13, align 8
  %125 = icmp ugt i64 %124, 0
  br label %126

126:                                              ; preds = %123, %117
  %127 = phi i1 [ false, %117 ], [ %125, %123 ]
  br i1 %127, label %128, label %162

128:                                              ; preds = %126
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub nsw i64 %135, %136
  %138 = load i64, i64* %13, align 8
  %139 = call i64 @MIN(i64 %137, i64 %138)
  store i64 %139, i64* %14, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i64, i64* %14, align 8
  %153 = call i32 @bcopy(i32* %142, i64 %151, i64 %152)
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %13, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %9, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %12, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %117

162:                                              ; preds = %126
  %163 = load i32*, i32** %11, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @CRYPTO_BITS2BYTES(i32 %166)
  %168 = call i32 @kmem_free(i32* %163, i64 %167)
  %169 = load i64, i64* %9, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %162
  %175 = load i64, i64* %13, align 8
  %176 = icmp ugt i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %178, i32* %4, align 4
  br label %182

179:                                              ; preds = %174, %162
  br label %180

180:                                              ; preds = %179, %82
  %181 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %177, %110, %65, %26
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @CRYPTO_BITS2BYTES(i32) #1

declare dso_local i32 @SKEIN_OP(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32* @kmem_alloc(i64, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bcopy(i32*, i64, i64) #1

declare dso_local i32 @kmem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
