; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_AddrStrToAddr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_AddrStrToAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.hostent = type { i64, i32*, i32 }

@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@kAddrStrToAddrMiscErr = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@kAddrStrToAddrBadHost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddrStrToAddr(i8* %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = call i32 @memset(%struct.sockaddr_in* %17, i32 0, i32 16)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strncpy(i8* %19, i8* %20, i32 128)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 127
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  store i8* %24, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %105

26:                                               ; preds = %3
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %98

32:                                               ; preds = %26
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %98

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  store i8 0, i8* %39, align 1
  store i32 0, i32* %10, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  store i8* %42, i8** %15, align 8
  br label %43

43:                                               ; preds = %88, %38
  %44 = load i8*, i8** %15, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %43
  %49 = load i8*, i8** %15, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ISALNUM(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 46
  br i1 %57, label %58, label %87

58:                                               ; preds = %53
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isdigit(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %15, align 8
  store i8 0, i8* %70, align 1
  %72 = load i8*, i8** %15, align 8
  store i8* %72, i8** %16, align 8
  br label %73

73:                                               ; preds = %78, %69
  %74 = load i8*, i8** %15, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isdigit(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %15, align 8
  br label %73

81:                                               ; preds = %73
  %82 = load i8*, i8** %15, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @atoi(i8* %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %63, %58
  %86 = load i8*, i8** %15, align 8
  store i8 0, i8* %86, align 1
  br label %91

87:                                               ; preds = %53, %48
  br label %88

88:                                               ; preds = %87
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %15, align 8
  br label %43

91:                                               ; preds = %85, %43
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %96 = call i32 @ServiceNameToPortNumber(i8* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %104

98:                                               ; preds = %32, %26
  %99 = load i8*, i8** %14, align 8
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @atoi(i8* %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %97
  br label %126

105:                                              ; preds = %3
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %107 = call i8* @strchr(i8* %106, i8 signext 64)
  store i8* %107, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i8*, i8** %13, align 8
  store i8 0, i8* %110, align 1
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %12, align 8
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %114 = call i32 @atoi(i8* %113)
  store i32 %114, i32* %10, align 4
  br label %125

115:                                              ; preds = %105
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %10, align 4
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %120, i8** %12, align 8
  br label %124

121:                                              ; preds = %115
  %122 = load i64, i64* @EADDRNOTAVAIL, align 8
  store i64 %122, i64* @errno, align 8
  %123 = load i32, i32* @kAddrStrToAddrMiscErr, align 4
  store i32 %123, i32* %4, align 4
  br label %176

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %109
  br label %126

126:                                              ; preds = %125, %104
  %127 = load i32, i32* %10, align 4
  %128 = trunc i32 %127 to i16
  %129 = call i32 @htons(i16 signext %128)
  %130 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = call i64 @inet_addr(i8* %132)
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @INADDR_NONE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = load i32, i32* @AF_INET, align 4
  %139 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  br label %175

145:                                              ; preds = %126
  store i64 0, i64* @errno, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = call %struct.hostent* @gethostbyname(i8* %146)
  store %struct.hostent* %147, %struct.hostent** %11, align 8
  %148 = load %struct.hostent*, %struct.hostent** %11, align 8
  %149 = icmp eq %struct.hostent* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i64, i64* @errno, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i64, i64* @ENOENT, align 8
  store i64 %154, i64* @errno, align 8
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i32, i32* @kAddrStrToAddrBadHost, align 4
  store i32 %156, i32* %4, align 4
  br label %176

157:                                              ; preds = %145
  %158 = load %struct.hostent*, %struct.hostent** %11, align 8
  %159 = getelementptr inbounds %struct.hostent, %struct.hostent* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %162 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %164 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load %struct.hostent*, %struct.hostent** %11, align 8
  %167 = getelementptr inbounds %struct.hostent, %struct.hostent* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hostent*, %struct.hostent** %11, align 8
  %172 = getelementptr inbounds %struct.hostent, %struct.hostent* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @memcpy(i64* %165, i32 %170, i64 %173)
  br label %175

175:                                              ; preds = %157, %137
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %155, %121
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ServiceNameToPortNumber(i8*) #1

declare dso_local i32 @htons(i16 signext) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
