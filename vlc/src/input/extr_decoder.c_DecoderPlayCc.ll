; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderPlayCc.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderPlayCc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, i32*, %struct.TYPE_5__*)* @DecoderPlayCc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderPlayCc(%struct.decoder_owner* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.decoder_owner*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 0
  %13 = call i32 @vlc_mutex_lock(i32* %12)
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  %19 = bitcast %struct.TYPE_5__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %24, %29
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %65, %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call %struct.decoder_owner* @dec_get_owner(i32* %43)
  store %struct.decoder_owner* %44, %struct.decoder_owner** %10, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %65

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %53 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @block_Duplicate(i32* %55)
  %57 = call i32 @block_FifoPut(i32 %54, i32* %56)
  br label %64

58:                                               ; preds = %48
  %59 = load %struct.decoder_owner*, %struct.decoder_owner** %10, align 8
  %60 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @block_FifoPut(i32 %61, i32* %62)
  store i32* null, i32** %5, align 8
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %31

70:                                               ; preds = %31
  %71 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %72 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %71, i32 0, i32 0
  %73 = call i32 @vlc_mutex_unlock(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @block_Release(i32* %77)
  br label %79

79:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @block_FifoPut(i32, i32*) #1

declare dso_local i32* @block_Duplicate(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @block_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
