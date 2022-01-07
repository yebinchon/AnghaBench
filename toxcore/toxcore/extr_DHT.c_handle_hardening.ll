; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_handle_hardening.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_handle_hardening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }

@HARDREQ_DATA_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@MAX_SENT_NODES = common dso_local global i32 0, align 4
@HARDENING_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i32)* @handle_hardening to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hardening(i8* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 %1, i32* %22, align 4
  store i8* %0, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %148

28:                                               ; preds = %5
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %147 [
    i32 129, label %32
    i32 128, label %63
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @HARDREQ_DATA_SIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %148

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %39 = bitcast %struct.TYPE_17__* %38 to i8*
  %40 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %45 = call i32 @memcpy(%struct.TYPE_16__* %42, i32* %43, i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @memcpy(%struct.TYPE_16__* %14, i32* %47, i32 16)
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = getelementptr inbounds i32, i32* %54, i64 16
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @getnodes(i32* %49, i32 %58, %struct.TYPE_16__* %52, i32* %55, %struct.TYPE_16__* %13)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %148

62:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %148

63:                                               ; preds = %28
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %148

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %73 = add nsw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = load i32, i32* @MAX_SENT_NODES, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 16, %76
  %78 = add i64 %74, %77
  %79 = icmp ugt i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  br label %148

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* @MAX_SENT_NODES, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %16, align 8
  %89 = alloca %struct.TYPE_16__, i64 %87, align 16
  store i64 %87, i64* %17, align 8
  %90 = load i32, i32* @MAX_SENT_NODES, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @unpack_nodes(%struct.TYPE_16__* %89, i32 %90, i32 0, i32* %95, i32 %96, i32 0)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %81
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

101:                                              ; preds = %81
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @have_nodes_closelist(i32* %102, %struct.TYPE_16__* %89, i32 %103)
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 2
  %107 = sdiv i32 %106, 2
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

110:                                              ; preds = %101
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i64 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 16
  %119 = call %struct.TYPE_18__* @get_closelist_IPPTsPng(i32* %111, i32* %113, i32 %118)
  store %struct.TYPE_18__* %119, %struct.TYPE_18__** %20, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %121 = icmp eq %struct.TYPE_18__* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

123:                                              ; preds = %110
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HARDENING_INTERVAL, align 4
  %129 = call i32 @is_timeout(i32 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

132:                                              ; preds = %123
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @public_key_cmp(i32 %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

141:                                              ; preds = %132
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %145

145:                                              ; preds = %141, %140, %131, %122, %109, %100
  %146 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %148

147:                                              ; preds = %28
  store i32 1, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %145, %80, %68, %62, %61, %36, %27
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i32 @getnodes(i32*, i32, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @unpack_nodes(%struct.TYPE_16__*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @have_nodes_closelist(i32*, %struct.TYPE_16__*, i32) #2

declare dso_local %struct.TYPE_18__* @get_closelist_IPPTsPng(i32*, i32*, i32) #2

declare dso_local i32 @is_timeout(i32, i32) #2

declare dso_local i32 @public_key_cmp(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
