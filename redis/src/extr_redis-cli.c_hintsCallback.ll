; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_hintsCallback.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_hintsCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@pref = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@helpEntriesLen = common dso_local global i32 0, align 4
@helpEntries = common dso_local global %struct.TYPE_6__* null, align 8
@CLI_HELP_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @hintsCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hintsCallback(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pref, i32 0, i32 0), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %138

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i8** @sdssplitargs(i8* %22, i32* %9)
  store i8** %23, i8*** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %26, %19
  %36 = phi i1 [ false, %19 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8**, i8*** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sdsfreesplitres(i8** %41, i32 %42)
  store i8* null, i8** %4, align 8
  br label %138

44:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %131, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @helpEntriesLen, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %134

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @helpEntries, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CLI_HELP_COMMAND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %131

60:                                               ; preds = %49
  %61 = load i8**, i8*** %11, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @helpEntries, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @strcasecmp(i8* %63, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %130

72:                                               ; preds = %60
  %73 = load i32*, i32** %6, align 8
  store i32 90, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @helpEntries, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @sdsnew(i32 %82)
  store i8* %83, i8** %13, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %111, %72
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %13, align 8
  %91 = call i64 @sdslen(i8* %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %114

95:                                               ; preds = %93
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 91
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %114

102:                                              ; preds = %95
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @sdsrange(i8* %112, i32 1, i32 -1)
  br label %86

114:                                              ; preds = %101, %93
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = call i8* @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %118, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i8* @sdscatsds(i8* %119, i8* %120)
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @sdsfree(i8* %122)
  %124 = load i8*, i8** %15, align 8
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %117, %114
  %126 = load i8**, i8*** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @sdsfreesplitres(i8** %126, i32 %127)
  %129 = load i8*, i8** %13, align 8
  store i8* %129, i8** %4, align 8
  br label %138

130:                                              ; preds = %60
  br label %131

131:                                              ; preds = %130, %59
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %45

134:                                              ; preds = %45
  %135 = load i8**, i8*** %11, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @sdsfreesplitres(i8** %135, i32 %136)
  store i8* null, i8** %4, align 8
  br label %138

138:                                              ; preds = %134, %125, %40, %18
  %139 = load i8*, i8** %4, align 8
  ret i8* %139
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i8* @sdsnew(i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i8* @sdsnewlen(i8*, i32) #1

declare dso_local i8* @sdscatsds(i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
