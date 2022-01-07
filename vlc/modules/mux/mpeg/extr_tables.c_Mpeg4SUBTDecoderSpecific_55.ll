; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_Mpeg4SUBTDecoderSpecific_55.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_Mpeg4SUBTDecoderSpecific_55.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Mpeg4SUBTDecoderSpecific_55.fontname = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Mpeg4SUBTDecoderSpecific_55 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Mpeg4SUBTDecoderSpecific_55(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @bits_write(i32* %5, i32 8, i8 signext 16)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @bits_write(i32* %7, i32 8, i8 signext 0)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @bits_write(i32* %9, i32 8, i8 signext 52)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @bits_write(i32* %11, i32 32, i8 signext 0)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @bits_write(i32* %13, i32 8, i8 signext 0)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @bits_write(i32* %15, i32 8, i8 signext 1)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @bits_write(i32* %17, i32 24, i8 signext 0)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @bits_write(i32* %19, i32 8, i8 signext -1)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @bits_write(i32* %21, i32 16, i8 signext 0)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @bits_write(i32* %23, i32 16, i8 signext 0)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @bits_write(i32* %25, i32 16, i8 signext 0)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @bits_write(i32* %27, i32 16, i8 signext 0)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @bits_write(i32* %29, i32 16, i8 signext 0)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @bits_write(i32* %31, i32 16, i8 signext 0)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @bits_write(i32* %33, i32 16, i8 signext 0)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @bits_write(i32* %35, i32 8, i8 signext 0)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @bits_write(i32* %37, i32 8, i8 signext 12)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @bits_write(i32* %39, i32 24, i8 signext 0)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @bits_write(i32* %41, i32 8, i8 signext 0)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @bits_write(i32* %43, i32 24, i8 signext 0)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @bits_write(i32* %45, i32 8, i8 signext 22)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @bits_write(i32* %47, i32 8, i8 signext 102)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @bits_write(i32* %49, i32 8, i8 signext 116)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @bits_write(i32* %51, i32 8, i8 signext 97)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @bits_write(i32* %53, i32 8, i8 signext 98)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @bits_write(i32* %55, i32 8, i8 signext 0)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @bits_write(i32* %57, i32 8, i8 signext 1)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @bits_write(i32* %59, i32 16, i8 signext 0)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @bits_write(i32* %61, i32 8, i8 signext 9)
  %63 = bitcast [10 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %63, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.Mpeg4SUBTDecoderSpecific_55.fontname, i32 0, i32 0), i64 10, i1 false)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %74, %1
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 9
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @bits_write(i32* %68, i32 8, i8 signext %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %64

77:                                               ; preds = %64
  ret void
}

declare dso_local i32 @bits_write(i32*, i32, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
