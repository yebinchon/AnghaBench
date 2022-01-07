; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_dns3_test.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_dns3_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [143 x i8] c"Usage: %s domain domain_public_key queried_username\0AEX: %s utox.org D3154F65D28A5B41A05D4AC7E4B39C6B1C233CC857FB365C56E8392737462A12 username\0A\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"._tox.\00", align 1
@TOX_ADDRESS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"The Tox id for username %s is:\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02hhX\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca [512 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  %33 = call i32 @exit(i32 0) #5
  unreachable

34:                                               ; preds = %2
  %35 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  %36 = load i8*, i8** @AF_INET, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @SOCK_DGRAM, align 4
  %41 = load i32, i32* @IPPROTO_UDP, align 4
  %42 = call i32 @socket(i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @sock_valid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %193

47:                                               ; preds = %34
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @addr_resolve_or_parse_ip(i8* %50, %struct.TYPE_5__* %6, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %193

54:                                               ; preds = %47
  store i64 16, i64* %9, align 8
  %55 = load i8*, i8** @AF_INET, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = call i32 @htons(i32 53)
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = bitcast [1024 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 1024, i1 false)
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @hex_string_to_bin(i8* %66)
  %68 = call i8* @tox_dns3_new(i32 %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @tox_generate_dns3_string(i8* %69, i8* %71, i32 1023, i64* %13, i8* %74, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %193

83:                                               ; preds = %54
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8 95, i8* %84, align 16
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @memcpy(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = getelementptr inbounds i8, i8* %95, i64 7
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = call i32 @memcpy(i8* %97, i8* %100, i32 %104)
  %106 = call signext i8 (...) @rand()
  store i8 %106, i8* %16, align 1
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %110 = call i32 @strlen(i8* %109)
  %111 = load i8, i8* %16, align 1
  %112 = call i64 @create_packet(i8* %107, i8* %108, i32 %110, i8 signext %111)
  store i64 %112, i64* %17, align 8
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %115 = load i64, i64* %17, align 8
  %116 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @sendto(i32 %113, i8* %114, i64 %115, i32 0, %struct.sockaddr* %116, i64 %117)
  %119 = load i64, i64* %17, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %193

122:                                              ; preds = %83
  %123 = bitcast [512 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %123, i8 0, i64 512, i1 false)
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  %126 = call i32 @recv(i32 %124, i8* %125, i32 512, i32 0)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i64, i64* %17, align 8
  %129 = trunc i64 %128 to i32
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %193

132:                                              ; preds = %122
  %133 = load i32, i32* %19, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %148, %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 61
  br label %145

145:                                              ; preds = %138, %135
  %146 = phi i1 [ false, %135 ], [ %144, %138 ]
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, -1
  store i32 %150, i32* %12, align 4
  br label %135

151:                                              ; preds = %145
  %152 = load i32, i32* @TOX_ADDRESS_SIZE, align 4
  %153 = zext i32 %152 to i64
  %154 = call i8* @llvm.stacksave()
  store i8* %154, i8** %20, align 8
  %155 = alloca i8, i64 %153, align 16
  store i64 %153, i64* %21, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add i32 %163, 1
  %165 = sub i32 %162, %164
  %166 = load i64, i64* %13, align 8
  %167 = call i64 @tox_decrypt_dns3_TXT(i8* %156, i8* %155, i8* %161, i32 %165, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %191

170:                                              ; preds = %151
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %173)
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %186, %170
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @TOX_ADDRESS_SIZE, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %155, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %12, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %175

189:                                              ; preds = %175
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %191

191:                                              ; preds = %189, %169
  %192 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %193

193:                                              ; preds = %191, %131, %121, %82, %53, %46
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @sock_valid(i32) #1

declare dso_local i32 @addr_resolve_or_parse_ip(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @tox_dns3_new(i32) #1

declare dso_local i32 @hex_string_to_bin(i8*) #1

declare dso_local i32 @tox_generate_dns3_string(i8*, i8*, i32, i64*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @rand(...) #1

declare dso_local i64 @create_packet(i8*, i8*, i32, i8 signext) #1

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i64 @tox_decrypt_dns3_TXT(i8*, i8*, i8*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
