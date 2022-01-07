; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_GetStartSpoolDate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_GetStartSpoolDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @GetStartSpoolDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetStartSpoolDate(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 4
  %14 = alloca %struct.tm*, align 8
  store i8* %0, i8** %3, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @STRNCPY(i8* %15, i8* %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %4, align 8
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 110
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %109

29:                                               ; preds = %24, %1
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %31 = call i8* @strchr(i8* %30, i8 signext 43)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 -1, i64* %2, align 8
  br label %158

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %35
  store i64 -1, i64* %2, align 8
  br label %158

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %64, %46
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @isalpha(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ false, %51 ], [ %61, %56 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  br label %51

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @isupper(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @tolower(i32 %75) #4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 115
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %103

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 109
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 %85, 60
  store i32 %86, i32* %8, align 4
  br label %102

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 104
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 3600
  store i32 %92, i32* %8, align 4
  br label %101

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 100
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 86400
  store i32 %98, i32* %8, align 4
  br label %100

99:                                               ; preds = %93
  store i64 -1, i64* %2, align 8
  br label %158

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %80
  %104 = call i32 @time(i64* %6)
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  store i64 %108, i64* %7, align 8
  br label %156

109:                                              ; preds = %24
  %110 = load i8*, i8** %4, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %152

112:                                              ; preds = %109
  %113 = call i32 @time(i64* %6)
  %114 = call %struct.tm* @localtime(i64* %6)
  store %struct.tm* %114, %struct.tm** %14, align 8
  %115 = load %struct.tm*, %struct.tm** %14, align 8
  %116 = icmp eq %struct.tm* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i64 -1, i64* %2, align 8
  br label %158

118:                                              ; preds = %112
  %119 = load %struct.tm*, %struct.tm** %14, align 8
  %120 = bitcast %struct.tm* %13 to i8*
  %121 = bitcast %struct.tm* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 8, i1 false)
  %122 = load i8*, i8** %4, align 8
  store i8 32, i8* %122, align 1
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %124 = call i32 @sscanf(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %12)
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127, %118
  store i64 -1, i64* %2, align 8
  br label %158

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = call i64 @mktime(%struct.tm* %13)
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp eq i64 %137, -1
  br i1 %138, label %142, label %139

139:                                              ; preds = %131
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139, %131
  %143 = load i64, i64* %7, align 8
  store i64 %143, i64* %2, align 8
  br label %158

144:                                              ; preds = %139
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %7, align 8
  %150 = add nsw i64 %149, 86400
  store i64 %150, i64* %7, align 8
  br label %151

151:                                              ; preds = %148, %144
  br label %155

152:                                              ; preds = %109
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %154 = call i64 @UnDate(i8* %153)
  store i64 %154, i64* %7, align 8
  br label %155

155:                                              ; preds = %152, %151
  br label %156

156:                                              ; preds = %155, %103
  %157 = load i64, i64* %7, align 8
  store i64 %157, i64* %2, align 8
  br label %158

158:                                              ; preds = %156, %142, %130, %117, %99, %45, %34
  %159 = load i64, i64* %2, align 8
  ret i64 %159
}

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @time(i64*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i64 @UnDate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
