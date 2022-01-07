; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_group.c_handle_group_audio_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_group.c_handle_group_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i32*, i32)* @handle_group_audio_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_group_audio_packet(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ule i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19, %6
  store i32 -1, i32* %7, align 4
  br label %81

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %14, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 4
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.TYPE_8__* @calloc(i32 1, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %15, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %81

39:                                               ; preds = %27
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @memcpy(i32* %16, i32* %40, i32 4)
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i32* %54, i32* %56, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = call i32 @queue(i32 %64, %struct.TYPE_8__* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %39
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = call i32 @free(%struct.TYPE_8__* %69)
  store i32 -1, i32* %7, align 4
  br label %81

71:                                               ; preds = %39
  br label %72

72:                                               ; preds = %79, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @decode_audio_packet(i8* %73, %struct.TYPE_7__* %74, i32 %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %72

80:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %68, %38, %26
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @queue(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @decode_audio_packet(i8*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
