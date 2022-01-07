; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_Passive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_Passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }

@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@kErrMallocFailed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@kErrPASVFailed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot parse PASV response: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.sockaddr_in*, i32*)* @Passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Passive(%struct.TYPE_15__* %0, %struct.sockaddr_in* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = call %struct.TYPE_14__* (...) @InitResponse()
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp eq %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = load i32, i32* @kDontPerror, align 4
  %20 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @Error(%struct.TYPE_15__* %18, i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @kErrMallocFailed, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = call i32 @RCmd(%struct.TYPE_15__* %28, %struct.TYPE_14__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %141

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @kErrPASVFailed, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %141

43:                                               ; preds = %34
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  br label %50

50:                                               ; preds = %73, %43
  %51 = load i8*, i8** %12, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load i32, i32* @kDontPerror, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @Error(%struct.TYPE_15__* %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %141

65:                                               ; preds = %50
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i64 @isdigit(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  br label %50

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %84 = call i32 @sscanf(i8* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %78, i32* %79, i32* %80, i32* %81, i32* %82, i32* %83)
  %85 = icmp ne i32 %84, 6
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = load i32, i32* @kDontPerror, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @Error(%struct.TYPE_15__* %87, i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %141

96:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %128, %96
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 255
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %101
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 %126
  store i8 %124, i8* %127, align 1
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %98

131:                                              ; preds = %98
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 1
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %135 = call i32 @memcpy(i32* %133, i8* %134, i64 4)
  %136 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %136, i32 0, i32 0
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 4
  %139 = call i32 @memcpy(i32* %137, i8* %138, i64 2)
  %140 = load i32, i32* @kNoErr, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %131, %86, %55, %39, %33
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = call i32 @DoneWithResponse(%struct.TYPE_15__* %142, %struct.TYPE_14__* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %141, %17
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.TYPE_14__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @RCmd(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
