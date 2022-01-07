; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_forkpty-hpux.c_forkpty.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_forkpty-hpux.c_forkpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.winsize = type opaque

@.str = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@TTY_NAME_MAX = common dso_local global i32 0, align 4
@I_PUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ptem\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ioctl failed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ldterm\00", align 1
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"tcsetattr failed\00", align 1
@TIOCSWINSZ = common dso_local global i32 0, align 4
@TIOCSCTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forkpty(i32* %0, i8* %1, %struct.termios* %2, %struct.winsize* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.termios*, align 8
  %9 = alloca %struct.winsize*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.termios* %2, %struct.termios** %8, align 8
  store %struct.winsize* %3, %struct.winsize** %9, align 8
  store i32 -1, i32* %10, align 4
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_NOCTTY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = icmp eq i32 %16, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %127

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @grantpt(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %112

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @unlockpt(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %112

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ptsname(i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %112

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @TTY_NAME_MAX, align 4
  %45 = call i32 @strlcpy(i8* %42, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = load i32, i32* @O_NOCTTY, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @open(i8* %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %112

54:                                               ; preds = %46
  %55 = call i32 (...) @fork()
  store i32 %55, i32* %12, align 4
  switch i32 %55, label %108 [
    i32 -1, label %56
    i32 0, label %57
  ]

56:                                               ; preds = %54
  br label %112

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = call i32 (...) @setsid()
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @I_PUSH, align 4
  %64 = call i32 @ioctl(i32 %62, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @I_PUSH, align 4
  %71 = call i32 @ioctl(i32 %69, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.termios*, %struct.termios** %8, align 8
  %77 = icmp ne %struct.termios* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @TCSAFLUSH, align 4
  %81 = load %struct.termios*, %struct.termios** %8, align 8
  %82 = call i32 @tcsetattr(i32 %79, i32 %80, %struct.termios* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %78, %75
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @TIOCSWINSZ, align 4
  %89 = load %struct.winsize*, %struct.winsize** %9, align 8
  %90 = bitcast %struct.winsize* %89 to i8*
  %91 = call i32 @ioctl(i32 %87, i32 %88, i8* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dup2(i32 %96, i32 0)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dup2(i32 %98, i32 1)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dup2(i32 %100, i32 2)
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @close(i32 %105)
  br label %107

107:                                              ; preds = %104, %95
  store i32 0, i32* %5, align 4
  br label %127

108:                                              ; preds = %54
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %127

112:                                              ; preds = %56, %53, %37, %31, %25
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @close(i32 %118)
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %123, %120
  store i32 -1, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %108, %107, %19
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @grantpt(i32) #1

declare dso_local i64 @unlockpt(i32) #1

declare dso_local i8* @ptsname(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
