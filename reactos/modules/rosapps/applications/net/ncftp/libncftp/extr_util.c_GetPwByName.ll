; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetPwByName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_GetPwByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @GetPwByName() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = call i8* (...) @getlogin()
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = call i64 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %1, align 8
  br label %14

14:                                               ; preds = %11, %6
  br label %15

15:                                               ; preds = %14, %0
  store %struct.passwd* null, %struct.passwd** %2, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %1, align 8
  %20 = call %struct.passwd* @getpwnam(i8* %19)
  store %struct.passwd* %20, %struct.passwd** %2, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %22
}

declare dso_local i8* @getlogin(...) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
