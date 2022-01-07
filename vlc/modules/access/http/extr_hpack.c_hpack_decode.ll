; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpack_decoder = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpack_decode(%struct.hpack_decoder* %0, i32* %1, i64 %2, [2 x i8*]* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpack_decoder*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i8*]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.hpack_decoder* %0, %struct.hpack_decoder** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store [2 x i8*]* %3, [2 x i8*]** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %60, %37, %5
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load %struct.hpack_decoder*, %struct.hpack_decoder** %7, align 8
  %21 = call i32 @hpack_decode_hdr(%struct.hpack_decoder* %20, i32** %8, i64* %9, i8** %13, i8** %14)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %65

25:                                               ; preds = %19
  %26 = load i8*, i8** %13, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %14, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %16

38:                                               ; preds = %25
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  %44 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %44, i64 %46
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %47, i64 0, i64 0
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %50, i64 %52
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %53, i64 0, i64 1
  store i8* %49, i8** %54, align 8
  br label %60

55:                                               ; preds = %38
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %55, %42
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %87

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %69, %65
  %67 = load i32, i32* %12, align 4
  %68 = icmp ugt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %12, align 4
  %72 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %72, i64 %74
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %75, i64 0, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %79, i64 %81
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %82, i64 0, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  br label %66

86:                                               ; preds = %66
  store i32 -1, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @hpack_decode_hdr(%struct.hpack_decoder*, i32**, i64*, i8**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
