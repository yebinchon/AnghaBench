; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_key_permissions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_key_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@hProv = common dso_local global i32 0, align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@KP_PERMISSIONS = common dso_local global i32 0, align 4
@CRYPT_MAC = common dso_local global i32 0, align 4
@CRYPT_WRITE = common dso_local global i32 0, align 4
@CRYPT_READ = common dso_local global i32 0, align 4
@CRYPT_EXPORT = common dso_local global i32 0, align 4
@CRYPT_DECRYPT = common dso_local global i32 0, align 4
@CRYPT_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT, got %08x\0A\00", align 1
@PUBLICKEYBLOB = common dso_local global i32 0, align 4
@PRIVATEKEYBLOB = common dso_local global i32 0, align 4
@NTE_BAD_DATA = common dso_local global i32 0, align 4
@NTE_BAD_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_key_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_key_permissions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %7 = call i32 @init_base_environment(i32* null, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %178

10:                                               ; preds = %0
  %11 = load i32, i32* @hProv, align 4
  %12 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %13 = call i32 @CryptGetUserKey(i32 %11, i32 %12, i32* %1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %178

20:                                               ; preds = %10
  store i32 -559038737, i32* %3, align 4
  store i32 4, i32* %4, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @KP_PERMISSIONS, align 4
  %23 = call i32 @CryptGetKeyParam(i32 %21, i32 %22, i32* %3, i32* %4, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CRYPT_MAC, align 4
  %29 = load i32, i32* @CRYPT_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CRYPT_READ, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CRYPT_EXPORT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CRYPT_DECRYPT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CRYPT_ENCRYPT, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %27, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i64 @broken(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %20
  %47 = phi i1 [ true, %20 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @PUBLICKEYBLOB, align 4
  %53 = call i32 @CryptExportKey(i32 %51, i32 0, i32 %52, i32 0, i32* null, i32* %4)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %59 = call i32 @CryptExportKey(i32 %57, i32 0, i32 %58, i32 0, i32* null, i32* %4)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @CRYPT_EXPORT, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @KP_PERMISSIONS, align 4
  %69 = call i32 @CryptSetKeyParam(i32 %67, i32 %68, i32* %3, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = call i32 (...) @GetLastError()
  %77 = load i32, i32* @NTE_BAD_DATA, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @broken(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = call i32 (...) @GetLastError()
  %89 = load i32, i32* @NTE_BAD_FLAGS, align 4
  %90 = icmp eq i32 %88, %89
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i1 [ false, %84 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  %94 = call i64 @broken(i32 %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %79, %46
  %97 = phi i1 [ true, %79 ], [ true, %46 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 (...) @GetLastError()
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 -559038737, i32* %3, align 4
  store i32 4, i32* %4, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @KP_PERMISSIONS, align 4
  %103 = call i32 @CryptGetKeyParam(i32 %101, i32 %102, i32* %3, i32* %4, i32 0)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @CRYPT_MAC, align 4
  %109 = load i32, i32* @CRYPT_WRITE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CRYPT_READ, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @CRYPT_EXPORT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @CRYPT_DECRYPT, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @CRYPT_ENCRYPT, align 4
  %118 = or i32 %116, %117
  %119 = icmp eq i32 %107, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %96
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, -1
  %123 = zext i1 %122 to i32
  %124 = call i64 @broken(i32 %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %120, %96
  %127 = phi i1 [ true, %96 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %1, align 4
  %132 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %133 = call i32 @CryptExportKey(i32 %131, i32 0, i32 %132, i32 0, i32* null, i32* %4)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (...) @GetLastError()
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @hProv, align 4
  %138 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %139 = call i32 @CryptGetUserKey(i32 %137, i32 %138, i32* %2)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 (...) @GetLastError()
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %141)
  store i32 -559038737, i32* %3, align 4
  store i32 4, i32* %4, align 4
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* @KP_PERMISSIONS, align 4
  %145 = call i32 @CryptGetKeyParam(i32 %143, i32 %144, i32* %3, i32* %4, i32 0)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (...) @GetLastError()
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @CRYPT_MAC, align 4
  %151 = load i32, i32* @CRYPT_WRITE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @CRYPT_READ, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @CRYPT_EXPORT, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @CRYPT_DECRYPT, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @CRYPT_ENCRYPT, align 4
  %160 = or i32 %158, %159
  %161 = icmp eq i32 %149, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %126
  %163 = load i32, i32* %3, align 4
  %164 = icmp eq i32 %163, -1
  %165 = zext i1 %164 to i32
  %166 = call i64 @broken(i32 %165)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %162, %126
  %169 = phi i1 [ true, %126 ], [ %167, %162 ]
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @CryptDestroyKey(i32 %173)
  %175 = load i32, i32* %1, align 4
  %176 = call i32 @CryptDestroyKey(i32 %175)
  %177 = call i32 (...) @clean_up_base_environment()
  br label %178

178:                                              ; preds = %168, %19, %9
  ret void
}

declare dso_local i32 @init_base_environment(i32*, i32) #1

declare dso_local i32 @CryptGetUserKey(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CryptGetKeyParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @CryptExportKey(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CryptSetKeyParam(i32, i32, i32*, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @clean_up_base_environment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
