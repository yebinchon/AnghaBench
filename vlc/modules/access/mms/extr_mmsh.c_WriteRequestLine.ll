; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmsh.c_WriteRequestLine.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmsh.c_WriteRequestLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32 }
%struct.vlc_memstream = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"http://%s:%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"?%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" HTTP/1.0\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Host: %s:%d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Proxy-Authorization: Basic %s\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Accept: */*\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"User-Agent: %s\0D\0A\00", align 1
@MMSH_USER_AGENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.vlc_memstream*)* @WriteRequestLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteRequestLine(%struct.TYPE_7__* %0, %struct.vlc_memstream* noalias %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.vlc_memstream* %1, %struct.vlc_memstream** %4, align 8
  %9 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %10 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %9)
  %11 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %12 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %28)
  br label %30

30:                                               ; preds = %17, %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %30
  %46 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %47 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %46, i8 signext 47)
  br label %55

48:                                               ; preds = %36
  %49 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %49, i8* %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %70 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %77, i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %5, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %127

89:                                               ; preds = %68
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %103 ]
  store i8* %105, i8** %6, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %108, i8* %109)
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %126

112:                                              ; preds = %104
  %113 = load i8*, i8** %7, align 8
  %114 = call i8* @vlc_b64_encode(i8* %113)
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %119, %112
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %126, %89, %68
  %128 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %129 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %131 = load i8*, i8** @MMSH_USER_AGENT, align 8
  %132 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %131)
  ret void
}

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i32*, i8*) #1

declare dso_local i8* @vlc_b64_encode(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
