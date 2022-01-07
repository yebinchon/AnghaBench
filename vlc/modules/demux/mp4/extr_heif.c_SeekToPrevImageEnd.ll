; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_SeekToPrevImageEnd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_SeekToPrevImageEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heif_private_t = type { i32, i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ATOM_infe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"meta/iinf/infe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.heif_private_t*, i32)* @SeekToPrevImageEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SeekToPrevImageEnd(%struct.heif_private_t* %0, i32 %1) #0 {
  %3 = alloca %struct.heif_private_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.heif_private_t* %0, %struct.heif_private_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  br label %7

7:                                                ; preds = %36, %35, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %13 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ATOM_infe, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @NextAtom(i32 %14, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi i1 [ false, %7 ], [ %18, %11 ]
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_4__* @BOXDATA(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %31 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MatchPureImage(i32* %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %21
  br label %7

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %19
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %42 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %45 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %48 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.heif_private_t*, %struct.heif_private_t** %3, align 8
  %52 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local i32* @NextAtom(i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @BOXDATA(i32*) #1

declare dso_local i32 @MatchPureImage(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
