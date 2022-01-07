; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnslogres.c_proclog.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnslogres.c_proclog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32** }

@OPT_DEBUG = common dso_local global i32 0, align 4
@adns_if_debug = common dso_local global i32 0, align 4
@config_text = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"adns_init\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%d in queue; checking %.*s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: adns_wait/check: %s\00", align 1
@progname = common dso_local global i8* null, align 8
@adns_s_ok = common dso_local global i64 0, align 8
@OPT_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @proclog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proclog(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @OPT_DEBUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @adns_if_debug, align 4
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* @config_text, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @stderr, align 4
  %32 = load i64, i64* @config_text, align 8
  %33 = call i64 @adns_init_strcfg(i32* %12, i32 %30, i32 %31, i64 %32)
  store i64 %33, i64* @errno, align 8
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %17, align 4
  %36 = call i64 @adns_init(i32* %12, i32 %35, i32 0)
  store i64 %36, i64* @errno, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @aargh(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.TYPE_10__* @readline(i32* %43, i32 %44, i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %14, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %170, %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %171

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %132, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %145

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @OPT_DEBUG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @guard_null(i64 %70)
  %72 = call i32 @msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %67, i32 %71)
  br label %73

73:                                               ; preds = %59, %54
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = call i32 @adns_wait(i32 %81, i32* %83, %struct.TYPE_10__** %13, i32* null)
  store i32 %84, i32* %10, align 4
  br label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = call i32 @adns_check(i32 %86, i32* %88, %struct.TYPE_10__** %13, i32* null)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @EWOULDBLOCK, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %145

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @progname, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i8* @strerror(i32 %105)
  %107 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %104, i8* %106)
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %99
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @adns_s_ok, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %109
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32*, i32** %129, align 8
  br label %132

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %125
  %133 = phi i32* [ %130, %125 ], [ null, %131 ]
  %134 = call i32 @printline(i32* %110, i32 %113, i64 %116, i64 %119, i32* %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %16, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %14, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %140 = call i32 @free(%struct.TYPE_10__* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %142 = call i32 @free(%struct.TYPE_10__* %141)
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %11, align 4
  br label %51

145:                                              ; preds = %98, %51
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %145
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call %struct.TYPE_10__* @readline(i32* %149, i32 %150, i32 %151)
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %16, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %154 = icmp ne %struct.TYPE_10__* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %148
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %157 = icmp ne %struct.TYPE_10__* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %14, align 8
  br label %164

160:                                              ; preds = %155
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store %struct.TYPE_10__* %161, %struct.TYPE_10__** %163, align 8
  br label %164

164:                                              ; preds = %160, %158
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %15, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %169

168:                                              ; preds = %148
  store i32 1, i32* %9, align 4
  br label %169

169:                                              ; preds = %168, %164
  br label %170

170:                                              ; preds = %169, %145
  br label %47

171:                                              ; preds = %47
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @adns_finish(i32 %172)
  ret void
}

declare dso_local i64 @adns_init_strcfg(i32*, i32, i32, i64) #1

declare dso_local i64 @adns_init(i32*, i32, i32) #1

declare dso_local i32 @aargh(i8*) #1

declare dso_local %struct.TYPE_10__* @readline(i32*, i32, i32) #1

declare dso_local i32 @msg(i8*, i32, i64, i32) #1

declare dso_local i32 @guard_null(i64) #1

declare dso_local i32 @adns_wait(i32, i32*, %struct.TYPE_10__**, i32*) #1

declare dso_local i32 @adns_check(i32, i32*, %struct.TYPE_10__**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printline(i32*, i32, i64, i64, i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @adns_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
