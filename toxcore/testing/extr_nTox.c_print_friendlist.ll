; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_friendlist.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_friendlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"[i] Friend List:\00", align 1
@TOX_MAX_NAME_LENGTH = common dso_local global i64 0, align 8
@TOX_ADDRESS_SIZE = common dso_local global i32 0, align 4
@FRADDR_TOSTR_BUFSIZE = common dso_local global i32 0, align 4
@ptrn_friend = common dso_local global i8* null, align 8
@id_str_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"No name?\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"+ no friends! D:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_friendlist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = call i32 @new_lines(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @TOX_MAX_NAME_LENGTH, align 8
  %11 = add nsw i64 %10, 1
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @TOX_ADDRESS_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @FRADDR_TOSTR_BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i64, i64* @TOX_MAX_NAME_LENGTH, align 8
  %21 = load i8*, i8** @ptrn_friend, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %20, %22
  %24 = add nsw i64 %23, 21
  %25 = load i32, i32* @id_str_len, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %54, %1
  %30 = load i32*, i32** %2, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @getfriendname_terminated(i32* %30, i64 %31, i8* %13)
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @tox_friend_get_public_key(i32* %35, i64 %36, i8* %16, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @fraddr_to_str(i8* %16, i8* %19)
  br label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %39
  %44 = call i64 @strlen(i8* %13)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** @ptrn_friend, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* %47, i64 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %54

50:                                               ; preds = %43
  %51 = load i8*, i8** @ptrn_friend, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* %51, i64 %52, i8* %13, i8* %19)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %8, align 8
  %57 = call i32 @new_lines(i8* %28)
  br label %29

58:                                               ; preds = %29
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @new_lines(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

declare dso_local i32 @new_lines(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getfriendname_terminated(i32*, i64, i8*) #1

declare dso_local i64 @tox_friend_get_public_key(i32*, i64, i8*, i32*) #1

declare dso_local i32 @fraddr_to_str(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
