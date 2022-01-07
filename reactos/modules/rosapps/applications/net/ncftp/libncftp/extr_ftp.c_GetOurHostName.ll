; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_GetOurHostName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_GetOurHostName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.hostent = type { i8**, i64 }

@.str = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOMAINNAME = common dso_local global i8* null, align 8
@HOSTNAME = common dso_local global i8* null, align 8
@_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetOurHostName(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @gethostname(i8* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %2
  store i32 -1, i32* %3, align 4
  br label %182

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 46)
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 2, i32* %3, align 4
  br label %182

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call %struct.hostent* @gethostbyname(i8* %36)
  store %struct.hostent* %37, %struct.hostent** %6, align 8
  %38 = load %struct.hostent*, %struct.hostent** %6, align 8
  %39 = icmp ne %struct.hostent* %38, null
  br i1 %39, label %40, label %93

40:                                               ; preds = %35
  %41 = load %struct.hostent*, %struct.hostent** %6, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i8* @strchr(i8* %44, i8 signext 46)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.hostent*, %struct.hostent** %6, align 8
  %57 = getelementptr inbounds %struct.hostent, %struct.hostent* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @Strncpy(i8* %55, i8* %59, i64 %60)
  store i32 3, i32* %3, align 4
  br label %182

62:                                               ; preds = %48, %40
  %63 = load %struct.hostent*, %struct.hostent** %6, align 8
  %64 = getelementptr inbounds %struct.hostent, %struct.hostent* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  store i8** %65, i8*** %8, align 8
  br label %66

66:                                               ; preds = %89, %62
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i8**, i8*** %8, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 46)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @Strncpy(i8* %83, i8* %85, i64 %86)
  store i32 4, i32* %3, align 4
  br label %182

88:                                               ; preds = %76, %70
  br label %89

89:                                               ; preds = %88
  %90 = load i8**, i8*** %8, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %8, align 8
  br label %66

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %35
  store i32 -1, i32* %11, align 4
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %94, align 16
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %96 = load i8, i8* %95, align 16
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %93
  %100 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %141

103:                                              ; preds = %99
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %105 = call i32 @memset(i8* %104, i32 0, i32 256)
  br label %106

106:                                              ; preds = %137, %132, %123, %117, %103
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %108 = load i32*, i32** %12, align 8
  %109 = call i32* @fgets(i8* %107, i32 255, i32* %108)
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %138

111:                                              ; preds = %106
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %113 = load i8, i8* %112, align 16
  %114 = sext i8 %113 to i32
  %115 = call i32 @isalpha(i32 %114) #3
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %106

118:                                              ; preds = %111
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %120 = call i8* @strtok(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %106

124:                                              ; preds = %118
  %125 = load i8*, i8** %14, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %129, i8** %14, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %106

133:                                              ; preds = %128
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @STRNCPY(i8* %134, i8* %135)
  store i32 7, i32* %11, align 4
  br label %138

137:                                              ; preds = %124
  br label %106

138:                                              ; preds = %133, %106
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @fclose(i32* %139)
  br label %141

141:                                              ; preds = %138, %99
  br label %142

142:                                              ; preds = %141, %93
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %144 = load i8, i8* %143, align 16
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %142
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %150 = call i32 @strlen(i8* %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = getelementptr inbounds i8, i8* %152, i64 -1
  store i8* %153, i8** %10, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 46
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i8*, i8** %10, align 8
  store i8 0, i8* %159, align 1
  br label %160

160:                                              ; preds = %158, %147
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %162 = load i8, i8* %161, align 16
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 46
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i8*, i8** %4, align 8
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @Strncat(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @Strncat(i8* %170, i8* %171, i64 %172)
  br label %174

174:                                              ; preds = %169, %142
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 0, i8* %179, align 1
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %82, %54, %34, %29
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
