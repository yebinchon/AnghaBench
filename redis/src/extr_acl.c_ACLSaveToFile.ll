; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSaveToFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSaveToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@C_ERR = common dso_local global i32 0, align 4
@Users = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c".tmp-%i-%I\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Opening temp ACL file for ACL SAVE: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Writing ACL file for ACL SAVE: %s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Renaming ACL file for ACL SAVE: %s\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLSaveToFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call i32* (...) @sdsempty()
  store i32* %11, i32** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* @C_ERR, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @Users, align 4
  %14 = call i32 @raxStart(%struct.TYPE_9__* %7, i32 %13)
  %15 = call i32 @raxSeek(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %16

16:                                               ; preds = %19, %1
  %17 = call i64 @raxNext(%struct.TYPE_9__* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  %22 = call i32* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @sdscatsds(i32* %23, i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @sdscatlen(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = call i32* @ACLDescribeUser(%struct.TYPE_8__* %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @sdscatsds(i32* %32, i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @sdsfree(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @sdscatsds(i32* %37, i32* %38)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @sdscatlen(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32* %41, i32** %3, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sdsfree(i32* %42)
  br label %16

44:                                               ; preds = %16
  %45 = call i32 @raxStop(%struct.TYPE_9__* %7)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32* @sdsnew(i8* %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 (...) @getpid()
  %50 = trunc i64 %49 to i32
  %51 = call i64 (...) @mstime()
  %52 = trunc i64 %51 to i32
  %53 = call i32* @sdscatfmt(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %52)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @O_WRONLY, align 4
  %56 = load i32, i32* @O_CREAT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @open(i32* %54, i32 %57, i32 420)
  store i32 %58, i32* %4, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load i32, i32* @LL_WARNING, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 @serverLog(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %95

65:                                               ; preds = %44
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @sdslen(i32* %68)
  %70 = call i64 @write(i32 %66, i32* %67, i64 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i64 @sdslen(i32* %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @LL_WARNING, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 @serverLog(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %95

79:                                               ; preds = %65
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 %80)
  store i32 -1, i32* %4, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 @rename(i32* %82, i8* %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @LL_WARNING, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 @serverLog(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %95

91:                                               ; preds = %79
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @sdsfree(i32* %92)
  store i32* null, i32** %5, align 8
  %94 = load i32, i32* @C_OK, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %86, %74, %60
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32*, i32** %5, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @unlink(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @sdsfree(i32* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @sdsfree(i32* %110)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32* @sdsempty(...) #1

declare dso_local i32 @raxStart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_9__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_9__*) #1

declare dso_local i32* @sdsnew(i8*) #1

declare dso_local i32* @sdscatsds(i32*, i32*) #1

declare dso_local i32* @sdscatlen(i32*, i8*, i32) #1

declare dso_local i32* @ACLDescribeUser(%struct.TYPE_8__*) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @raxStop(%struct.TYPE_9__*) #1

declare dso_local i32* @sdscatfmt(i32*, i8*, i32, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @open(i32*, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i64 @sdslen(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @rename(i32*, i8*) #1

declare dso_local i32 @unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
