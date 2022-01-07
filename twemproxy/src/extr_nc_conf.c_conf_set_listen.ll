; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_listen.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.command = type { i32 }
%struct.string = type { i8*, i32 }
%struct.conf_listen = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"is a duplicate\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@CONF_ERROR = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"has an invalid file permission in \22socket_path permission\22 format string\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"has an invalid \22hostname:port\22 format string\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"has an invalid port in \22hostname:port\22 format string\00", align 1
@CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_set_listen(%struct.conf* %0, %struct.command* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.string*, align 8
  %10 = alloca %struct.conf_listen*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.command*, %struct.command** %6, align 8
  %25 = getelementptr inbounds %struct.command, %struct.command* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.conf_listen*
  store %struct.conf_listen* %29, %struct.conf_listen** %10, align 8
  %30 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %31 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %201

35:                                               ; preds = %3
  %36 = load %struct.conf*, %struct.conf** %5, align 8
  %37 = getelementptr inbounds %struct.conf, %struct.conf* %36, i32 0, i32 0
  %38 = call %struct.string* @array_top(i32* %37)
  store %struct.string* %38, %struct.string** %9, align 8
  %39 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %40 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %39, i32 0, i32 5
  %41 = load %struct.string*, %struct.string** %9, align 8
  %42 = call i64 @string_duplicate(i32* %40, %struct.string* %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @NC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %47, i8** %4, align 8
  br label %201

48:                                               ; preds = %35
  %49 = load %struct.string*, %struct.string** %9, align 8
  %50 = getelementptr inbounds %struct.string, %struct.string* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %116

56:                                               ; preds = %48
  %57 = load %struct.string*, %struct.string** %9, align 8
  %58 = getelementptr inbounds %struct.string, %struct.string* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.string*, %struct.string** %9, align 8
  %61 = getelementptr inbounds %struct.string, %struct.string* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8* %65, i8** %11, align 8
  %66 = load %struct.string*, %struct.string** %9, align 8
  %67 = getelementptr inbounds %struct.string, %struct.string* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call i8* @nc_strrchr(i8* %69, i8* %70, i8 signext 32)
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %56
  %75 = load %struct.string*, %struct.string** %9, align 8
  %76 = getelementptr inbounds %struct.string, %struct.string* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %12, align 8
  %78 = load %struct.string*, %struct.string** %9, align 8
  %79 = getelementptr inbounds %struct.string, %struct.string* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %13, align 4
  br label %115

81:                                               ; preds = %56
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %16, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = add nsw i64 %88, 1
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %17, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %15, align 8
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = add nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  store i64 0, i64* @errno, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i64 @strtol(i8* %101, i32* null, i32 8)
  %103 = trunc i64 %102 to i32
  %104 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %105 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i64, i64* @errno, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %81
  %109 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %110 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 511
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %81
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %201

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %74
  br label %172

116:                                              ; preds = %48
  %117 = load %struct.string*, %struct.string** %9, align 8
  %118 = getelementptr inbounds %struct.string, %struct.string* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.string*, %struct.string** %9, align 8
  %121 = getelementptr inbounds %struct.string, %struct.string* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 -1
  store i8* %125, i8** %11, align 8
  %126 = load %struct.string*, %struct.string** %9, align 8
  %127 = getelementptr inbounds %struct.string, %struct.string* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %19, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = call i8* @nc_strrchr(i8* %129, i8* %130, i8 signext 58)
  store i8* %131, i8** %18, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %201

135:                                              ; preds = %116
  %136 = load i8*, i8** %18, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %20, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = add nsw i64 %142, 1
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %21, align 4
  %145 = load i8*, i8** %18, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  store i8* %146, i8** %11, align 8
  %147 = load i8*, i8** %19, align 8
  store i8* %147, i8** %12, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = add nsw i64 %152, 1
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %13, align 4
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @nc_atoi(i8* %155, i32 %156)
  %158 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %159 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %161 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %135
  %165 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %166 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @nc_valid_port(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164, %135
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %201

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %115
  %173 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %174 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %173, i32 0, i32 4
  %175 = load i8*, i8** %12, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i64 @string_copy(i32* %174, i8* %175, i32 %176)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @NC_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %182, i8** %4, align 8
  br label %201

183:                                              ; preds = %172
  %184 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %185 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %184, i32 0, i32 4
  %186 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %187 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %190 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %189, i32 0, i32 2
  %191 = call i64 @nc_resolve(i32* %185, i32 %188, i32* %190)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* @NC_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %183
  %196 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %196, i8** %4, align 8
  br label %201

197:                                              ; preds = %183
  %198 = load %struct.conf_listen*, %struct.conf_listen** %10, align 8
  %199 = getelementptr inbounds %struct.conf_listen, %struct.conf_listen* %198, i32 0, i32 0
  store i32 1, i32* %199, align 4
  %200 = load i8*, i8** @CONF_OK, align 8
  store i8* %200, i8** %4, align 8
  br label %201

201:                                              ; preds = %197, %195, %181, %170, %134, %113, %46, %34
  %202 = load i8*, i8** %4, align 8
  ret i8* %202
}

declare dso_local %struct.string* @array_top(i32*) #1

declare dso_local i64 @string_duplicate(i32*, %struct.string*) #1

declare dso_local i8* @nc_strrchr(i8*, i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @nc_atoi(i8*, i32) #1

declare dso_local i32 @nc_valid_port(i32) #1

declare dso_local i64 @string_copy(i32*, i8*, i32) #1

declare dso_local i64 @nc_resolve(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
