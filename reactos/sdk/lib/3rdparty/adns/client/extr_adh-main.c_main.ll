; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i32 }

@ov_pipe = common dso_local global i64 0, align 8
@ads = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"no domains given, and -f/--pipe not used; try --help\00", align 1
@ov_asynch = common dso_local global i64 0, align 8
@outstanding = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@stdout = common dso_local global i32 0, align 4
@rcode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 (...) @ensure_adns_init()
  br label %18

18:                                               ; preds = %23, %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %16, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %16, align 8
  %25 = call i32 @process_optarg(i8* %24, i8*** %5, i32 0)
  br label %18

26:                                               ; preds = %18
  %27 = load i64, i64* @ov_pipe, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ads, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @usageerr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29, %26
  br label %35

35:                                               ; preds = %117, %102, %34
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i64, i64* @ov_asynch, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %50

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outstanding, i32 0, i32 0), align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outstanding, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ]
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i32 [ 0, %39 ], [ %49, %48 ]
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @ads, align 4
  %53 = call i32 @adns_check(i32 %52, i32* %8, i32** %10, i8** %9)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @EWOULDBLOCK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %50
  br label %80

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ESRCH, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* @ov_pipe, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %118

70:                                               ; preds = %66
  br label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i8*, i8** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @query_done(i8* %77, i32* %78)
  br label %36

80:                                               ; preds = %70, %61
  store i32 0, i32* %12, align 4
  %81 = call i32 @FD_ZERO(i32* %13)
  %82 = call i32 @FD_ZERO(i32* %14)
  %83 = call i32 @FD_ZERO(i32* %15)
  %84 = load i64, i64* @ov_pipe, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  store i32 1, i32* %12, align 4
  %87 = call i32 @FD_SET(i32 0, i32* %13)
  br label %88

88:                                               ; preds = %86, %80
  store %struct.timeval* null, %struct.timeval** %6, align 8
  %89 = load i32, i32* @ads, align 4
  %90 = call i32 @adns_beforeselect(i32 %89, i32* %12, i32* %13, i32* %14, i32* %15, %struct.timeval** %6, %struct.timeval* %7, i32 0)
  %91 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.timeval*, %struct.timeval** %6, align 8
  %94 = call i32 @select(i32 %92, i32* %13, i32* %14, i32* %15, %struct.timeval* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EINTR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %35

103:                                              ; preds = %98
  %104 = load i64, i64* @errno, align 8
  %105 = call i32 @sysfail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %103, %88
  %107 = load i32, i32* @ads, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @adns_afterselect(i32 %107, i32 %108, i32* %13, i32* %14, i32* %15, i32 0)
  %110 = load i64, i64* @ov_pipe, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = call i64 @FD_ISSET(i32 0, i32* %13)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @read_stdin()
  br label %117

117:                                              ; preds = %115, %112, %106
  br label %35

118:                                              ; preds = %69
  %119 = load i32, i32* @stdout, align 4
  %120 = call i64 @fclose(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 (...) @outerr()
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32, i32* @rcode, align 4
  %126 = call i32 @quitnow(i32 %125)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ensure_adns_init(...) #1

declare dso_local i32 @process_optarg(i8*, i8***, i32) #1

declare dso_local i32 @usageerr(i8*) #1

declare dso_local i32 @adns_check(i32, i32*, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @query_done(i8*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @adns_beforeselect(i32, i32*, i32*, i32*, i32*, %struct.timeval**, %struct.timeval*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @sysfail(i8*, i64) #1

declare dso_local i32 @adns_afterselect(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read_stdin(...) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i32 @outerr(...) #1

declare dso_local i32 @quitnow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
