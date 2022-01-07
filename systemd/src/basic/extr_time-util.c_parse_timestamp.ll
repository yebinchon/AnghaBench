; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_parse_timestamp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_parse_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" UTC\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"(sd-timestamp)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_CLOSE_ALL_FDS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@tzname = common dso_local global i32* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_timestamp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 32)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = call i64 @timezone_is_valid(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %23, %17, %2
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @endswith_no_case(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %26
  %34 = load i8*, i8** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @parse_timestamp_impl(i8* %34, i32* %35, i32 0)
  store i32 %36, i32* %3, align 4
  br label %137

37:                                               ; preds = %29
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @PROT_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAP_SHARED, align 4
  %42 = load i32, i32* @MAP_ANONYMOUS, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.TYPE_5__* @mmap(i32* null, i32 8, i32 %40, i32 %43, i32 -1, i32 0)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MAP_FAILED, align 8
  %47 = icmp eq %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 (...) @negative_errno()
  store i32 %49, i32* %3, align 4
  br label %137

50:                                               ; preds = %37
  %51 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %52 = load i32, i32* @FORK_CLOSE_ALL_FDS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FORK_DEATHSIG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FORK_WAIT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @safe_fork(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32* null)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = call i64 @munmap(%struct.TYPE_5__* %62, i32 8)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %137

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %114

68:                                               ; preds = %65
  store i32 1, i32* %11, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @strjoina(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = call i32 (...) @negative_errno()
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 @_exit(i32 %78) #4
  unreachable

80:                                               ; preds = %68
  %81 = call i32 (...) @tzset()
  %82 = load i8*, i8** %7, align 8
  %83 = load i32*, i32** @tzname, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @tzname, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @STR_IN_SET(i8* %82, i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @strndupa(i8* %96, i32 %102)
  store i8* %103, i8** %4, align 8
  br label %104

104:                                              ; preds = %95, %80
  %105 = load i8*, i8** %4, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @parse_timestamp_impl(i8* %105, i32* %107, i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @EXIT_SUCCESS, align 4
  %113 = call i32 @_exit(i32 %112) #4
  unreachable

114:                                              ; preds = %65
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = bitcast %struct.TYPE_5__* %9 to i8*
  %117 = bitcast %struct.TYPE_5__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 8, i1 false)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = call i64 @munmap(%struct.TYPE_5__* %118, i32 8)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 (...) @negative_errno()
  store i32 %122, i32* %3, align 4
  br label %137

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %127, %123
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %121, %61, %48, %33
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @timezone_is_valid(i8*, i32) #1

declare dso_local i64 @endswith_no_case(i8*, i8*) #1

declare dso_local i32 @parse_timestamp_impl(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @negative_errno(...) #1

declare dso_local i32 @safe_fork(i8*, i32, i32*) #1

declare dso_local i64 @munmap(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @STR_IN_SET(i8*, i32, i32) #1

declare dso_local i8* @strndupa(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
