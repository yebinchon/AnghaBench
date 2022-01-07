; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_parseRedisUri.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_parseRedisUri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"redis://\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid URI scheme\0A\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parseRedisUri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseRedisUri(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i64 @strncasecmp(i8* %17, i8* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %121

37:                                               ; preds = %27
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 64)
  store i8* %39, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 58)
  store i8* %43, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %49, %45, %41
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @percentDecode(i8* %53, i32 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %52, %37
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %121

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 47)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 47
  br i1 %74, label %75, label %104

75:                                               ; preds = %68
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  br label %83

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i8* [ %80, %78 ], [ %82, %81 ]
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 58)
  store i8* %86, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i8* @atoi(i8* %90)
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8* %93, i8** %9, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i32 @sdsnewlen(i8* %95, i32 %102)
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %104

104:                                              ; preds = %94, %68
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  br label %112

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i8* [ %109, %107 ], [ %111, %110 ]
  store i8* %113, i8** %4, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %121

118:                                              ; preds = %112
  %119 = load i8*, i8** %4, align 8
  %120 = call i8* @atoi(i8* %119)
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %121

121:                                              ; preds = %118, %117, %67, %36
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @percentDecode(i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
