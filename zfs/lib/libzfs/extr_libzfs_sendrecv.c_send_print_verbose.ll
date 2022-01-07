; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_print_verbose.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_print_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"incremental\09%s\09%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"full\09%s\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"send from @%s to %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"send from %s to %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"full send of %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09%llu\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" estimated size is %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64, i64)* @send_print_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_print_verbose(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  br label %26

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %60

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @strchr(i8* %31, i8 signext 64)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = call i32* @strchr(i8* %35, i8 signext 35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @TEXT_DOMAIN, align 4
  %41 = call i8* @dgettext(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* %41, i8* %42, i8* %43)
  br label %52

45:                                               ; preds = %34, %30
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i8* @dgettext(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* %48, i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %45, %38
  br label %59

53:                                               ; preds = %27
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @TEXT_DOMAIN, align 4
  %56 = call i8* @dgettext(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %53, %52
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %81

68:                                               ; preds = %60
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %74 = call i32 @zfs_nicebytes(i64 %72, i8* %73, i32 16)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @TEXT_DOMAIN, align 4
  %77 = call i8* @dgettext(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %71, %68
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_nicebytes(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
