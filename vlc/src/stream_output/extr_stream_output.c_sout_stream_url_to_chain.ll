; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_stream_url_to_chain.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_stream_url_to_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@sout_stream_url_to_chain.rtplist = internal constant [23 x i8] c"dccp\00sctp\00tcp\00udplite\00\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]:\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"rtp{mux=\22%s\22,proto=\22%s\22,dst=\22%s%s%s\22}\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\22,port=\22\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"standard{mux=\22%s\22,access=\22%s\22,dst=\22%s\22}\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"duplicate{dst=display,dst=%s}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @sout_stream_url_to_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sout_stream_url_to_chain(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @mrl_Parse(%struct.TYPE_4__* %5, i8* %10)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @sout_stream_url_to_chain.rtplist, i64 0, i64 0), i8** %7, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %17, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %39

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 1
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %7, align 8
  br label %12

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %22
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 91
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %52, %46
  br label %60

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 58)
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 0, i8* %64, align 1
  br label %66

66:                                               ; preds = %63, %60
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i8*, i8** %8, align 8
  br label %84

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %83 ]
  %86 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %72, i8* %74, i8* %78, i8* %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i8* null, i8** %6, align 8
  br label %89

89:                                               ; preds = %88, %84
  br label %103

90:                                               ; preds = %30
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %94, i8* %96, i8* %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  store i8* null, i8** %6, align 8
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i8* null, i8** %9, align 8
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8*, i8** %9, align 8
  store i8* %117, i8** %6, align 8
  br label %118

118:                                              ; preds = %114, %106, %103
  %119 = call i32 @mrl_Clean(%struct.TYPE_4__* %5)
  %120 = load i8*, i8** %6, align 8
  ret i8* %120
}

declare dso_local i32 @mrl_Parse(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mrl_Clean(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
