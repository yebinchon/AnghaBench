; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_ServiceNameToPortNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_ServiceNameToPortNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ServiceNameToPortNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ServiceNameToPortNumber(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca %struct.servent*, align 8
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strncpy(i8* %7, i8* %8, i32 63)
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 63
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isdigit(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @ISALNUM(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 45
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 95
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %30
  br label %55

51:                                               ; preds = %45, %40, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  br label %30

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %58 = call %struct.servent* @getservbyname(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.servent* %58, %struct.servent** %6, align 8
  %59 = load %struct.servent*, %struct.servent** %6, align 8
  %60 = icmp ne %struct.servent* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.servent*, %struct.servent** %6, align 8
  %63 = getelementptr inbounds %struct.servent, %struct.servent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i16
  %66 = call i64 @ntohs(i16 zeroext %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %55
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = call %struct.servent* @getservbyname(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %70, %struct.servent** %6, align 8
  %71 = load %struct.servent*, %struct.servent** %6, align 8
  %72 = icmp ne %struct.servent* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.servent*, %struct.servent** %6, align 8
  %75 = getelementptr inbounds %struct.servent, %struct.servent* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i16
  %78 = call i64 @ntohs(i16 zeroext %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %73, %61, %25
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i64 @ntohs(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
