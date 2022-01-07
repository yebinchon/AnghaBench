; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_parse_transport.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_satip.c_parse_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"destination=\00", align 1
@UDP_ADDRESS_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @parse_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_transport(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strtok_r(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %19
  %26 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %88

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %86, %34
  %36 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %36, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %87

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 12
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 12
  %50 = call i32 @strlen(i8* %49)
  %51 = load i32, i32* @UDP_ADDRESS_LEN, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @__MIN(i32 %50, i32 %52)
  %54 = call i32 @memcpy(i8* %45, i8* %47, i32 %53)
  br label %86

55:                                               ; preds = %38
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i32 0, i32 6)
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @__MIN(i32 %67, i32 5)
  %69 = call i32 @memcpy(i8* %62, i8* %64, i32 %68)
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %71, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i8*, i8** %11, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %59
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = call i32 @parse_port(i8* %76, i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85, %42
  br label %35

87:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %33, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @parse_port(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
