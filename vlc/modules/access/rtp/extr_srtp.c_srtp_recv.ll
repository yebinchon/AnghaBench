; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_srtp_recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_srtp.c_srtp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SRTP_UNAUTHENTICATED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srtp_recv(%struct.TYPE_8__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %16, 12
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %142

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SRTP_UNAUTHENTICATED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %137, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = call i32 @rcc_mode(%struct.TYPE_8__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @rtp_seq(i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  store i64 4, i64* %10, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i32 @rcc_mode(%struct.TYPE_8__* %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 0, i64* %9, align 8
  br label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, 4
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %46
  br label %58

51:                                               ; preds = %34
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call i32 @rcc_mode(%struct.TYPE_8__* %52)
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 12, %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %62, %63
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  br label %142

68:                                               ; preds = %59
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %69, %70
  %72 = load i64, i64* %8, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @rtp_seq(i32* %75)
  %77 = call i64 @srtp_compute_roc(%struct.TYPE_8__* %74, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %68
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %81, 4
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = call i32 @memcpy(i64* %12, i32* %87, i32 4)
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @ntohl(i64 %89)
  store i64 %90, i64* %12, align 8
  br label %93

91:                                               ; preds = %68
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %91, %80
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32* @rtp_digest(i32 %97, i32* %98, i64 %99, i64 %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32*, i32** %13, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @memcmp(i32* %106, i32* %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %93
  %112 = load i32, i32* @EACCES, align 4
  store i32 %112, i32* %4, align 4
  br label %142

113:                                              ; preds = %93
  %114 = load i64, i64* %10, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @rtp_seq(i32* %127)
  %129 = call i64 @srtp_compute_roc(%struct.TYPE_8__* %126, i32 %128)
  %130 = load i64, i64* %12, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  br label %134

134:                                              ; preds = %116, %113
  %135 = load i64, i64* %8, align 8
  %136 = load i64*, i64** %7, align 8
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %20
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @srtp_crypt(%struct.TYPE_8__* %138, i32* %139, i64 %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %137, %111, %66, %18
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @rcc_mode(%struct.TYPE_8__*) #1

declare dso_local i32 @rtp_seq(i32*) #1

declare dso_local i64 @srtp_compute_roc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32* @rtp_digest(i32, i32*, i64, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @srtp_crypt(%struct.TYPE_8__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
