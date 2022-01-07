; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetUsrName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetUsrName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetUsrName(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.passwd* null, %struct.passwd** %6, align 8
  %7 = call %struct.passwd* (...) @GetPwByName()
  store %struct.passwd* %7, %struct.passwd** %6, align 8
  %8 = icmp eq %struct.passwd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (...) @getuid()
  %11 = call %struct.passwd* @getpwuid(i32 %10)
  store %struct.passwd* %11, %struct.passwd** %6, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.passwd*, %struct.passwd** %6, align 8
  %14 = icmp ne %struct.passwd* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.passwd*, %struct.passwd** %6, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  br label %25

19:                                               ; preds = %12
  %20 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %24

24:                                               ; preds = %23, %19
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @Strncpy(i8* %26, i8* %27, i64 %28)
  ret void
}

declare dso_local %struct.passwd* @GetPwByName(...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
