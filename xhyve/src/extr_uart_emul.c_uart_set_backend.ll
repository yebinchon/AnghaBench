; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_set_backend.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_set_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@uart_stdio = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"autopty\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"error opening /dev/ptmx char device\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ptsname: error getting name for slave pseudo terminal\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"error setting up ownership and permissions on slave pseudo terminal\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"error unlocking slave pseudo terminal, to allow its usage\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"%s connected to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_set_backend(%struct.uart_softc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32, i32* @uart_stdio, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @STDIN_FILENO, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  store i32 1, i32* @uart_stdio, align 4
  %29 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @F_SETFL, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = call i32 @fcntl(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %95

36:                                               ; preds = %18, %14
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = load i32, i32* @O_RDWR, align 4
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %103

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @ptsname(i32 %51)
  store i8* %52, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 @perror(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %103

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @grantpt(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 @perror(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %103

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @unlockpt(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %103

71:                                               ; preds = %64
  %72 = load i32, i32* @stdout, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %78 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %82 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i8* %80, i8** %83, align 8
  %84 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %85 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  store i32 0, i32* %8, align 4
  br label %94

87:                                               ; preds = %36
  %88 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @uart_tty_backend(%struct.uart_softc* %88, i8* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %21
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %100 = call i32 @uart_opentty(%struct.uart_softc* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %68, %61, %54, %46, %13
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ptsname(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @grantpt(i32) #1

declare dso_local i32 @unlockpt(i32) #1

declare dso_local i64 @uart_tty_backend(%struct.uart_softc*, i8*) #1

declare dso_local i32 @uart_opentty(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
