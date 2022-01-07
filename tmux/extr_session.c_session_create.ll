; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32, i32, i32*, i32*, %struct.options*, %struct.environ*, i32, i32, i32*, i8*, i64 }
%struct.environ = type { i32 }
%struct.options = type { i32 }
%struct.termios = type { i32 }

@next_session_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@sessions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"new session %s $%u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gettimeofday failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.session* @session_create(i8* %0, i8* %1, i8* %2, %struct.environ* %3, %struct.options* %4, %struct.termios* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.environ*, align 8
  %11 = alloca %struct.options*, align 8
  %12 = alloca %struct.termios*, align 8
  %13 = alloca %struct.session*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.environ* %3, %struct.environ** %10, align 8
  store %struct.options* %4, %struct.options** %11, align 8
  store %struct.termios* %5, %struct.termios** %12, align 8
  %14 = call %struct.session* @xcalloc(i32 1, i32 80)
  store %struct.session* %14, %struct.session** %13, align 8
  %15 = load %struct.session*, %struct.session** %13, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.session*, %struct.session** %13, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @xstrdup(i8* %19)
  %21 = load %struct.session*, %struct.session** %13, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 10
  store i8* %20, i8** %22, align 8
  %23 = load %struct.session*, %struct.session** %13, align 8
  %24 = getelementptr inbounds %struct.session, %struct.session* %23, i32 0, i32 9
  store i32* null, i32** %24, align 8
  %25 = load %struct.session*, %struct.session** %13, align 8
  %26 = getelementptr inbounds %struct.session, %struct.session* %25, i32 0, i32 8
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.session*, %struct.session** %13, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 7
  %30 = call i32 @RB_INIT(i32* %29)
  %31 = load %struct.environ*, %struct.environ** %10, align 8
  %32 = load %struct.session*, %struct.session** %13, align 8
  %33 = getelementptr inbounds %struct.session, %struct.session* %32, i32 0, i32 6
  store %struct.environ* %31, %struct.environ** %33, align 8
  %34 = load %struct.options*, %struct.options** %11, align 8
  %35 = load %struct.session*, %struct.session** %13, align 8
  %36 = getelementptr inbounds %struct.session, %struct.session* %35, i32 0, i32 5
  store %struct.options* %34, %struct.options** %36, align 8
  %37 = load %struct.session*, %struct.session** %13, align 8
  %38 = call i32 @status_update_cache(%struct.session* %37)
  %39 = load %struct.session*, %struct.session** %13, align 8
  %40 = getelementptr inbounds %struct.session, %struct.session* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.termios*, %struct.termios** %12, align 8
  %42 = icmp ne %struct.termios* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %6
  %44 = call i32* @xmalloc(i32 4)
  %45 = load %struct.session*, %struct.session** %13, align 8
  %46 = getelementptr inbounds %struct.session, %struct.session* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.session*, %struct.session** %13, align 8
  %48 = getelementptr inbounds %struct.session, %struct.session* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.termios*, %struct.termios** %12, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.termios* %50, i32 4)
  br label %52

52:                                               ; preds = %43, %6
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @xstrdup(i8* %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.session*, %struct.session** %13, align 8
  %60 = getelementptr inbounds %struct.session, %struct.session* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* @next_session_id, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @next_session_id, align 4
  %63 = load %struct.session*, %struct.session** %13, align 8
  %64 = getelementptr inbounds %struct.session, %struct.session* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  br label %103

65:                                               ; preds = %52
  %66 = load %struct.session*, %struct.session** %13, align 8
  %67 = getelementptr inbounds %struct.session, %struct.session* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %97, %65
  %69 = load i32, i32* @next_session_id, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @next_session_id, align 4
  %71 = load %struct.session*, %struct.session** %13, align 8
  %72 = getelementptr inbounds %struct.session, %struct.session* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.session*, %struct.session** %13, align 8
  %74 = getelementptr inbounds %struct.session, %struct.session* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @free(i32* %75)
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.session*, %struct.session** %13, align 8
  %81 = getelementptr inbounds %struct.session, %struct.session* %80, i32 0, i32 3
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.session*, %struct.session** %13, align 8
  %84 = getelementptr inbounds %struct.session, %struct.session* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32**, i8*, i8*, ...) @xasprintf(i32** %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %82, i32 %85)
  br label %96

87:                                               ; preds = %68
  %88 = load %struct.session*, %struct.session** %13, align 8
  %89 = getelementptr inbounds %struct.session, %struct.session* %88, i32 0, i32 3
  %90 = load %struct.session*, %struct.session** %13, align 8
  %91 = getelementptr inbounds %struct.session, %struct.session* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 (i32**, i8*, i8*, ...) @xasprintf(i32** %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %87, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* @sessions, align 4
  %99 = load %struct.session*, %struct.session** %13, align 8
  %100 = call i32* @RB_FIND(i32 %98, i32* @sessions, %struct.session* %99)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %68, label %102

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* @sessions, align 4
  %105 = load %struct.session*, %struct.session** %13, align 8
  %106 = call i32 @RB_INSERT(i32 %104, i32* @sessions, %struct.session* %105)
  %107 = load %struct.session*, %struct.session** %13, align 8
  %108 = getelementptr inbounds %struct.session, %struct.session* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.session*, %struct.session** %13, align 8
  %111 = getelementptr inbounds %struct.session, %struct.session* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %109, i32 %112)
  %114 = load %struct.session*, %struct.session** %13, align 8
  %115 = getelementptr inbounds %struct.session, %struct.session* %114, i32 0, i32 1
  %116 = call i64 @gettimeofday(i32* %115, i32* null)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %103
  %119 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %103
  %121 = load %struct.session*, %struct.session** %13, align 8
  %122 = load %struct.session*, %struct.session** %13, align 8
  %123 = getelementptr inbounds %struct.session, %struct.session* %122, i32 0, i32 1
  %124 = call i32 @session_update_activity(%struct.session* %121, i32* %123)
  %125 = load %struct.session*, %struct.session** %13, align 8
  ret %struct.session* %125
}

declare dso_local %struct.session* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @status_update_cache(%struct.session*) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.termios*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @xasprintf(i32**, i8*, i8*, ...) #1

declare dso_local i32* @RB_FIND(i32, i32*, %struct.session*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.session*) #1

declare dso_local i32 @log_debug(i8*, i32*, i32) #1

declare dso_local i64 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @session_update_activity(%struct.session*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
