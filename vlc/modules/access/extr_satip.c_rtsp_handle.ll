; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_rtsp_handle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_rtsp_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"RTSP/1.0 \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Content-Base:\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Content-Length:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Session:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Transport:\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"com.ses.streamID:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @rtsp_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_handle(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %127, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %130

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = bitcast %struct.TYPE_6__* %21 to i32*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @net_readln_timeout(i32* %22, i32 %25, i32 5000, i32* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %130

31:                                               ; preds = %20
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 9
  %38 = call i8* @atoi(i8* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %7, align 4
  br label %127

40:                                               ; preds = %31
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 13
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @skip_whitespace(i8* %51)
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @strdup(i8* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %126

57:                                               ; preds = %40
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 16
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @skip_whitespace(i8* %64)
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @atoi(i8* %66)
  %68 = ptrtoint i8* %67 to i64
  store i64 %68, i64* %9, align 8
  br label %125

69:                                               ; preds = %57
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 8)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @skip_whitespace(i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = call i32 @parse_session(i8* %78, i32 %81, i32 64, i32* %83)
  br label %124

85:                                               ; preds = %69
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %86, i32 10)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 10
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @skip_whitespace(i8* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i64 @parse_transport(%struct.TYPE_6__* %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %7, align 4
  br label %130

100:                                              ; preds = %89
  br label %123

101:                                              ; preds = %85
  %102 = load i8*, i8** %11, align 8
  %103 = call i64 @strncmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 17)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 17
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @skip_whitespace(i8* %108)
  %110 = load i8*, i8** %12, align 8
  %111 = call i8* @atoi(i8* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %122

114:                                              ; preds = %101
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %114
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122, %100
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124, %61
  br label %126

126:                                              ; preds = %125, %44
  br label %127

127:                                              ; preds = %126, %35
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @free(i8* %128)
  br label %16

130:                                              ; preds = %98, %30, %16
  br label %131

131:                                              ; preds = %146, %130
  %132 = load i64, i64* %9, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @__MIN(i32 2048, i64 %140)
  %142 = call i64 @net_Read(%struct.TYPE_6__* %135, i32 %138, i32* %139, i32 %141)
  store i64 %142, i64* %10, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %134, %131
  %145 = phi i1 [ false, %131 ], [ %143, %134 ]
  br i1 %145, label %146, label %150

146:                                              ; preds = %144
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %9, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %9, align 8
  br label %131

150:                                              ; preds = %144
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i8* @net_readln_timeout(i32*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @parse_session(i8*, i32, i32, i32*) #1

declare dso_local i64 @parse_transport(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @net_Read(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @__MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
